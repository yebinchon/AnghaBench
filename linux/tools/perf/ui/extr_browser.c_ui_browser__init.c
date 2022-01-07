
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser_colorset {int bg; int fg; scalar_t__ name; int colorset; } ;


 int perf_config (int ,int *) ;
 int sltt_set_color (int ,scalar_t__,int ,int ) ;
 int ui_browser__color_config ;
 struct ui_browser_colorset* ui_browser__colorsets ;

void ui_browser__init(void)
{
 int i = 0;

 perf_config(ui_browser__color_config, ((void*)0));

 while (ui_browser__colorsets[i].name) {
  struct ui_browser_colorset *c = &ui_browser__colorsets[i++];
  sltt_set_color(c->colorset, c->name, c->fg, c->bg);
 }
}
