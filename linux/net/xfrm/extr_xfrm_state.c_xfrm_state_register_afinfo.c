
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {size_t family; } ;


 int EAFNOSUPPORT ;
 int EEXIST ;
 size_t NPROTO ;
 scalar_t__ WARN_ON (int) ;
 int rcu_assign_pointer (int *,struct xfrm_state_afinfo*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;
 int ** xfrm_state_afinfo ;
 int xfrm_state_afinfo_lock ;

int xfrm_state_register_afinfo(struct xfrm_state_afinfo *afinfo)
{
 int err = 0;

 if (WARN_ON(afinfo->family >= NPROTO))
  return -EAFNOSUPPORT;

 spin_lock_bh(&xfrm_state_afinfo_lock);
 if (unlikely(xfrm_state_afinfo[afinfo->family] != ((void*)0)))
  err = -EEXIST;
 else
  rcu_assign_pointer(xfrm_state_afinfo[afinfo->family], afinfo);
 spin_unlock_bh(&xfrm_state_afinfo_lock);
 return err;
}
