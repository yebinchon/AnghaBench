
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ui__question_window (char*,char const*,char*,int ) ;

int ui__help_window(const char *text)
{
 return ui__question_window("Help", text, "Press any key...", 0);
}
