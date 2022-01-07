
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int complete (struct completion*) ;
 int do_exit (long) ;

void complete_and_exit(struct completion *comp, long code)
{
 if (comp)
  complete(comp);

 do_exit(code);
}
