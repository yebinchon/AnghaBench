
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int show_quiet; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 TYPE_2__* g ;
 int printf (char*,...) ;

__attribute__((used)) static void print_res(const char *name, double val,
        const char *txt_unit, const char *txt_short, const char *txt_long)
{
 if (!name)
  name = "main,";

 if (!g->p.show_quiet)
  printf(" %-30s %15.3f, %-15s %s\n", name, val, txt_unit, txt_short);
 else
  printf(" %14.3f %s\n", val, txt_long);
}
