
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_afinfo {struct dst_ops* dst_ops; } ;
struct dst_ops {scalar_t__ confirm_neigh; int * neigh_lookup; int * link_failure; int * negative_advice; int * mtu; int * default_advmss; int * check; int * kmem_cachep; } ;


 int ARRAY_SIZE (int **) ;
 int EAFNOSUPPORT ;
 int EEXIST ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ likely (int) ;
 int rcu_assign_pointer (int *,struct xfrm_policy_afinfo const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ xfrm_confirm_neigh ;
 int * xfrm_default_advmss ;
 int * xfrm_dst_cache ;
 int * xfrm_dst_check ;
 int * xfrm_link_failure ;
 int * xfrm_mtu ;
 int * xfrm_negative_advice ;
 int * xfrm_neigh_lookup ;
 int ** xfrm_policy_afinfo ;
 int xfrm_policy_afinfo_lock ;

int xfrm_policy_register_afinfo(const struct xfrm_policy_afinfo *afinfo, int family)
{
 int err = 0;

 if (WARN_ON(family >= ARRAY_SIZE(xfrm_policy_afinfo)))
  return -EAFNOSUPPORT;

 spin_lock(&xfrm_policy_afinfo_lock);
 if (unlikely(xfrm_policy_afinfo[family] != ((void*)0)))
  err = -EEXIST;
 else {
  struct dst_ops *dst_ops = afinfo->dst_ops;
  if (likely(dst_ops->kmem_cachep == ((void*)0)))
   dst_ops->kmem_cachep = xfrm_dst_cache;
  if (likely(dst_ops->check == ((void*)0)))
   dst_ops->check = xfrm_dst_check;
  if (likely(dst_ops->default_advmss == ((void*)0)))
   dst_ops->default_advmss = xfrm_default_advmss;
  if (likely(dst_ops->mtu == ((void*)0)))
   dst_ops->mtu = xfrm_mtu;
  if (likely(dst_ops->negative_advice == ((void*)0)))
   dst_ops->negative_advice = xfrm_negative_advice;
  if (likely(dst_ops->link_failure == ((void*)0)))
   dst_ops->link_failure = xfrm_link_failure;
  if (likely(dst_ops->neigh_lookup == ((void*)0)))
   dst_ops->neigh_lookup = xfrm_neigh_lookup;
  if (likely(!dst_ops->confirm_neigh))
   dst_ops->confirm_neigh = xfrm_confirm_neigh;
  rcu_assign_pointer(xfrm_policy_afinfo[family], afinfo);
 }
 spin_unlock(&xfrm_policy_afinfo_lock);

 return err;
}
