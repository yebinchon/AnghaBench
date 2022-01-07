
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hold_timer; int hold_queue; } ;
struct TYPE_3__ {int all; } ;
struct xfrm_policy {TYPE_2__ polq; int timer; int refcnt; int lock; int byidx; int bydst; int bydst_inexact_list; TYPE_1__ walk; int xp_net; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 struct xfrm_policy* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int rwlock_init (int *) ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int write_pnet (int *,struct net*) ;
 int xfrm_policy_queue_process ;
 int xfrm_policy_timer ;

struct xfrm_policy *xfrm_policy_alloc(struct net *net, gfp_t gfp)
{
 struct xfrm_policy *policy;

 policy = kzalloc(sizeof(struct xfrm_policy), gfp);

 if (policy) {
  write_pnet(&policy->xp_net, net);
  INIT_LIST_HEAD(&policy->walk.all);
  INIT_HLIST_NODE(&policy->bydst_inexact_list);
  INIT_HLIST_NODE(&policy->bydst);
  INIT_HLIST_NODE(&policy->byidx);
  rwlock_init(&policy->lock);
  refcount_set(&policy->refcnt, 1);
  skb_queue_head_init(&policy->polq.hold_queue);
  timer_setup(&policy->timer, xfrm_policy_timer, 0);
  timer_setup(&policy->polq.hold_timer,
       xfrm_policy_queue_process, 0);
 }
 return policy;
}
