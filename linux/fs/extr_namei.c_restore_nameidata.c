
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {scalar_t__ stack; scalar_t__ internal; int total_link_count; struct nameidata* saved; } ;
struct TYPE_2__ {struct nameidata* nameidata; } ;


 TYPE_1__* current ;
 int kfree (scalar_t__) ;

__attribute__((used)) static void restore_nameidata(void)
{
 struct nameidata *now = current->nameidata, *old = now->saved;

 current->nameidata = old;
 if (old)
  old->total_link_count = now->total_link_count;
 if (now->stack != now->internal)
  kfree(now->stack);
}
