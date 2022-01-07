
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;
 scalar_t__ save_and_exit ;
 int show_textbox (int *,char const*,int,int) ;
 int silent ;

__attribute__((used)) static void conf_message_callback(const char *s)
{
 if (save_and_exit) {
  if (!silent)
   printf("%s", s);
 } else {
  show_textbox(((void*)0), s, 6, 60);
 }
}
