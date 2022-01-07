
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ has_colors () ;
 int no_colors_theme () ;
 int normal_color_theme () ;
 int set_normal_colors () ;
 int start_color () ;
 int use_default_colors () ;

void set_colors(void)
{
 start_color();
 use_default_colors();
 set_normal_colors();
 if (has_colors()) {
  normal_color_theme();
 } else {

  no_colors_theme();
 }
}
