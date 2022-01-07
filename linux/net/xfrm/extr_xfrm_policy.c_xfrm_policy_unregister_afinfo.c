
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_afinfo {struct dst_ops* dst_ops; } ;
struct dst_ops {int * link_failure; int * negative_advice; int * check; int * kmem_cachep; } ;


 int ARRAY_SIZE (struct xfrm_policy_afinfo const**) ;
 int RCU_INIT_POINTER (struct xfrm_policy_afinfo const*,int *) ;
 int synchronize_rcu () ;
 struct xfrm_policy_afinfo const** xfrm_policy_afinfo ;

void xfrm_policy_unregister_afinfo(const struct xfrm_policy_afinfo *afinfo)
{
 struct dst_ops *dst_ops = afinfo->dst_ops;
 int i;

 for (i = 0; i < ARRAY_SIZE(xfrm_policy_afinfo); i++) {
  if (xfrm_policy_afinfo[i] != afinfo)
   continue;
  RCU_INIT_POINTER(xfrm_policy_afinfo[i], ((void*)0));
  break;
 }

 synchronize_rcu();

 dst_ops->kmem_cachep = ((void*)0);
 dst_ops->check = ((void*)0);
 dst_ops->negative_advice = ((void*)0);
 dst_ops->link_failure = ((void*)0);
}
