
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit_gtk_browser (int) ;
 int ui__exit (int) ;
 int use_browser ;

void exit_browser(bool wait_for_ok)
{
 switch (use_browser) {
 case 2:
  exit_gtk_browser(wait_for_ok);
  break;

 case 1:
  ui__exit(wait_for_ok);
  break;

 default:
  break;
 }
}
