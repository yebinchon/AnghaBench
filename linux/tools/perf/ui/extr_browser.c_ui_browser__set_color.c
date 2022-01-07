
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int current_color; } ;


 int SLsmg_set_color (int) ;

int ui_browser__set_color(struct ui_browser *browser, int color)
{
 int ret = browser->current_color;
 browser->current_color = color;
 SLsmg_set_color(color);
 return ret;
}
