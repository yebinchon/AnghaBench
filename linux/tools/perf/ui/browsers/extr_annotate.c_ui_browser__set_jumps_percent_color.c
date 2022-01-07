
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ui_browser__jumps_percent_color (void*,int,int) ;
 int ui_browser__set_color (void*,int) ;

__attribute__((used)) static int ui_browser__set_jumps_percent_color(void *browser, int nr, bool current)
{
  int color = ui_browser__jumps_percent_color(browser, nr, current);
  return ui_browser__set_color(browser, color);
}
