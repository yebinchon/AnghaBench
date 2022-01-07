
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long mask; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* flagnames ;
 int fprintf (int ,char*,...) ;
 int stdout ;

void print_flags(unsigned long flags)
{
 int i;
 int printed = 0;

 for (i = 0; i < ARRAY_SIZE(flagnames); i++) {
  if (flags & flagnames[i].mask) {
   if (printed)
    fprintf(stdout, " ");
   fprintf(stdout, "%s", flagnames[i].name);
   printed++;
  }
 }
}
