
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_input_afinfo {size_t family; } ;


 size_t ARRAY_SIZE (int **) ;
 int EAFNOSUPPORT ;
 int EEXIST ;
 scalar_t__ WARN_ON (int) ;
 int rcu_assign_pointer (int *,struct xfrm_input_afinfo const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;
 int ** xfrm_input_afinfo ;
 int xfrm_input_afinfo_lock ;

int xfrm_input_register_afinfo(const struct xfrm_input_afinfo *afinfo)
{
 int err = 0;

 if (WARN_ON(afinfo->family >= ARRAY_SIZE(xfrm_input_afinfo)))
  return -EAFNOSUPPORT;

 spin_lock_bh(&xfrm_input_afinfo_lock);
 if (unlikely(xfrm_input_afinfo[afinfo->family] != ((void*)0)))
  err = -EEXIST;
 else
  rcu_assign_pointer(xfrm_input_afinfo[afinfo->family], afinfo);
 spin_unlock_bh(&xfrm_input_afinfo_lock);
 return err;
}
