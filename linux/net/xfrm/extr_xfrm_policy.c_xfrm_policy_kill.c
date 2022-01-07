
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hold_queue; int hold_timer; } ;
struct TYPE_3__ {int dead; } ;
struct xfrm_policy {int timer; TYPE_2__ polq; int genid; TYPE_1__ walk; } ;


 int atomic_inc (int *) ;
 scalar_t__ del_timer (int *) ;
 int skb_queue_purge (int *) ;
 int xfrm_pol_put (struct xfrm_policy*) ;

__attribute__((used)) static void xfrm_policy_kill(struct xfrm_policy *policy)
{
 policy->walk.dead = 1;

 atomic_inc(&policy->genid);

 if (del_timer(&policy->polq.hold_timer))
  xfrm_pol_put(policy);
 skb_queue_purge(&policy->polq.hold_queue);

 if (del_timer(&policy->timer))
  xfrm_pol_put(policy);

 xfrm_pol_put(policy);
}
