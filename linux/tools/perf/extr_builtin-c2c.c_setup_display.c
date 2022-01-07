
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int display; } ;


 int DISPLAY_LCL ;
 int DISPLAY_RMT ;
 int DISPLAY_TOT ;
 TYPE_1__ c2c ;
 int pr_err (char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int setup_display(const char *str)
{
 const char *display = str ?: "tot";

 if (!strcmp(display, "tot"))
  c2c.display = DISPLAY_TOT;
 else if (!strcmp(display, "rmt"))
  c2c.display = DISPLAY_RMT;
 else if (!strcmp(display, "lcl"))
  c2c.display = DISPLAY_LCL;
 else {
  pr_err("failed: unknown display type: %s\n", str);
  return -1;
 }

 return 0;
}
