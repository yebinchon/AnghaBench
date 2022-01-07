
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PERF_GTK_DSO ;
 scalar_t__ dump_trace ;
 int isatty (int) ;
 int printf (char*,char*) ;
 int setup_gtk_browser () ;
 int setup_pager () ;
 int sleep (int) ;
 int ui__init () ;
 int use_browser ;

void setup_browser(bool fallback_to_pager)
{
 if (use_browser < 2 && (!isatty(1) || dump_trace))
  use_browser = 0;


 if (use_browser < 0)
  use_browser = 1;

 switch (use_browser) {
 case 2:
  if (setup_gtk_browser() == 0)
   break;
  printf("GTK browser requested but could not find %s\n",
         PERF_GTK_DSO);
  sleep(1);
  use_browser = 1;

 case 1:
  if (ui__init() == 0)
   break;

 default:
  use_browser = 0;
  if (fallback_to_pager)
   setup_pager();
  break;
 }
}
