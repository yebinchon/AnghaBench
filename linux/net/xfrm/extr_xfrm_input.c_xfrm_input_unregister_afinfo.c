
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_input_afinfo {size_t family; } ;


 int EINVAL ;
 int RCU_INIT_POINTER (struct xfrm_input_afinfo const*,int *) ;
 scalar_t__ likely (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;
 scalar_t__ unlikely (int) ;
 struct xfrm_input_afinfo const** xfrm_input_afinfo ;
 int xfrm_input_afinfo_lock ;

int xfrm_input_unregister_afinfo(const struct xfrm_input_afinfo *afinfo)
{
 int err = 0;

 spin_lock_bh(&xfrm_input_afinfo_lock);
 if (likely(xfrm_input_afinfo[afinfo->family] != ((void*)0))) {
  if (unlikely(xfrm_input_afinfo[afinfo->family] != afinfo))
   err = -EINVAL;
  else
   RCU_INIT_POINTER(xfrm_input_afinfo[afinfo->family], ((void*)0));
 }
 spin_unlock_bh(&xfrm_input_afinfo_lock);
 synchronize_rcu();
 return err;
}
