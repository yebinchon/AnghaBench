
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {int family; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int NPROTO ;
 int RCU_INIT_POINTER (int *,int *) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ likely (int ) ;
 struct xfrm_state_afinfo* rcu_access_pointer (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;
 int ** xfrm_state_afinfo ;
 int xfrm_state_afinfo_lock ;

int xfrm_state_unregister_afinfo(struct xfrm_state_afinfo *afinfo)
{
 int err = 0, family = afinfo->family;

 if (WARN_ON(family >= NPROTO))
  return -EAFNOSUPPORT;

 spin_lock_bh(&xfrm_state_afinfo_lock);
 if (likely(xfrm_state_afinfo[afinfo->family] != ((void*)0))) {
  if (rcu_access_pointer(xfrm_state_afinfo[family]) != afinfo)
   err = -EINVAL;
  else
   RCU_INIT_POINTER(xfrm_state_afinfo[afinfo->family], ((void*)0));
 }
 spin_unlock_bh(&xfrm_state_afinfo_lock);
 synchronize_rcu();
 return err;
}
