
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target {int dummy; } ;


 int xt_unregister_target (struct xt_target*) ;

void
xt_unregister_targets(struct xt_target *target, unsigned int n)
{
 while (n-- > 0)
  xt_unregister_target(&target[n]);
}
