
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hold_timer; } ;
struct TYPE_3__ {int dead; } ;
struct xfrm_policy {int rcu; TYPE_2__ polq; int timer; TYPE_1__ walk; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int call_rcu (int *,int ) ;
 scalar_t__ del_timer (int *) ;
 int xfrm_policy_destroy_rcu ;

void xfrm_policy_destroy(struct xfrm_policy *policy)
{
 BUG_ON(!policy->walk.dead);

 if (del_timer(&policy->timer) || del_timer(&policy->polq.hold_timer))
  BUG();

 call_rcu(&policy->rcu, xfrm_policy_destroy_rcu);
}
