
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int prefixlen_s; int saddr; int prefixlen_d; int daddr; } ;
struct xfrm_policy {TYPE_2__ selector; int family; } ;
struct hlist_head {int dummy; } ;
struct xfrm_pol_inexact_node {struct hlist_head hhead; int root; } ;
struct xfrm_pol_inexact_bin {int count; int root_d; int root_s; struct hlist_head hhead; } ;
struct TYPE_3__ {int xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 int lockdep_assert_held (int *) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;
 scalar_t__ xfrm_pol_inexact_addr_use_any_list (int *,int ,int ) ;
 struct xfrm_pol_inexact_node* xfrm_policy_inexact_insert_node (struct net*,int *,int *,int ,int ,int ) ;
 scalar_t__ xfrm_policy_inexact_insert_use_any_list (struct xfrm_policy*) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static struct hlist_head *
xfrm_policy_inexact_alloc_chain(struct xfrm_pol_inexact_bin *bin,
    struct xfrm_policy *policy, u8 dir)
{
 struct xfrm_pol_inexact_node *n;
 struct net *net;

 net = xp_net(policy);
 lockdep_assert_held(&net->xfrm.xfrm_policy_lock);

 if (xfrm_policy_inexact_insert_use_any_list(policy))
  return &bin->hhead;

 if (xfrm_pol_inexact_addr_use_any_list(&policy->selector.daddr,
            policy->family,
            policy->selector.prefixlen_d)) {
  write_seqcount_begin(&bin->count);
  n = xfrm_policy_inexact_insert_node(net,
          &bin->root_s,
          &policy->selector.saddr,
          policy->family,
          policy->selector.prefixlen_s,
          dir);
  write_seqcount_end(&bin->count);
  if (!n)
   return ((void*)0);

  return &n->hhead;
 }


 write_seqcount_begin(&bin->count);
 n = xfrm_policy_inexact_insert_node(net,
         &bin->root_d,
         &policy->selector.daddr,
         policy->family,
         policy->selector.prefixlen_d, dir);
 write_seqcount_end(&bin->count);
 if (!n)
  return ((void*)0);


 if (xfrm_pol_inexact_addr_use_any_list(&policy->selector.saddr,
            policy->family,
            policy->selector.prefixlen_s))
  return &n->hhead;

 write_seqcount_begin(&bin->count);
 n = xfrm_policy_inexact_insert_node(net,
         &n->root,
         &policy->selector.saddr,
         policy->family,
         policy->selector.prefixlen_s, dir);
 write_seqcount_end(&bin->count);
 if (!n)
  return ((void*)0);

 return &n->hhead;
}
