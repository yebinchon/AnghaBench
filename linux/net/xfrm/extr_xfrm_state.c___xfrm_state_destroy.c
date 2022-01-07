
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct xfrm_state {int gclist; TYPE_1__ km; } ;


 int WARN_ON (int) ;
 scalar_t__ XFRM_STATE_DEAD ;
 int ___xfrm_state_destroy (struct xfrm_state*) ;
 int hlist_add_head (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;
 int xfrm_state_gc_list ;
 int xfrm_state_gc_lock ;
 int xfrm_state_gc_work ;

void __xfrm_state_destroy(struct xfrm_state *x, bool sync)
{
 WARN_ON(x->km.state != XFRM_STATE_DEAD);

 if (sync) {
  synchronize_rcu();
  ___xfrm_state_destroy(x);
 } else {
  spin_lock_bh(&xfrm_state_gc_lock);
  hlist_add_head(&x->gclist, &xfrm_state_gc_list);
  spin_unlock_bh(&xfrm_state_gc_lock);
  schedule_work(&xfrm_state_gc_work);
 }
}
