if [ `echo $SHELL | grep 'zsh'` ] ; then
  ENV_FILE="zshrc"
elif [ `echo $SHELL | grep 'fish'` ] ; then
  printf "
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
fishは対応してないよ！！
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"
  return 2>&- || exit
else
  ENV_FILE="bash_profile"
fi

sed -i .bak '/rbenv init/d' ~/.$ENV_FILE
rm -rf ~/.bundle

printf "
仕込み完了です。
一旦ターミナルを再起動してください
"
