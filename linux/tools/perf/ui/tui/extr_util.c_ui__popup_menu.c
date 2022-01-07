
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {void* entries; int nr_entries; int write; int seek; int refresh; } ;


 int popup_menu__run (struct ui_browser*) ;
 int ui_browser__argv_refresh ;
 int ui_browser__argv_seek ;
 int ui_browser__argv_write ;

int ui__popup_menu(int argc, char * const argv[])
{
 struct ui_browser menu = {
  .entries = (void *)argv,
  .refresh = ui_browser__argv_refresh,
  .seek = ui_browser__argv_seek,
  .write = ui_browser__argv_write,
  .nr_entries = argc,
 };

 return popup_menu__run(&menu);
}
