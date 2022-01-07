
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct xfrm_policy {int if_id; int type; int family; } ;
struct xfrm_pol_inexact_key {int net; int if_id; int dir; int type; int family; } ;
struct xfrm_pol_inexact_bin {int inexact_bins; int head; struct xfrm_pol_inexact_key k; int count; void* root_s; void* root_d; int hhead; } ;
struct TYPE_2__ {int inexact_bins; int xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct xfrm_pol_inexact_bin*) ;
 void* RB_ROOT ;
 int kfree (struct xfrm_pol_inexact_bin*) ;
 struct xfrm_pol_inexact_bin* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;
 struct xfrm_pol_inexact_bin* rhashtable_lookup_fast (int *,struct xfrm_pol_inexact_key*,int ) ;
 struct xfrm_pol_inexact_bin* rhashtable_lookup_get_insert_key (int *,struct xfrm_pol_inexact_key*,int *,int ) ;
 int seqcount_init (int *) ;
 int write_pnet (int *,struct net*) ;
 int xfrm_pol_inexact_params ;
 int xfrm_policy_inexact_table ;
 struct net* xp_net (struct xfrm_policy const*) ;

__attribute__((used)) static struct xfrm_pol_inexact_bin *
xfrm_policy_inexact_alloc_bin(const struct xfrm_policy *pol, u8 dir)
{
 struct xfrm_pol_inexact_bin *bin, *prev;
 struct xfrm_pol_inexact_key k = {
  .family = pol->family,
  .type = pol->type,
  .dir = dir,
  .if_id = pol->if_id,
 };
 struct net *net = xp_net(pol);

 lockdep_assert_held(&net->xfrm.xfrm_policy_lock);

 write_pnet(&k.net, net);
 bin = rhashtable_lookup_fast(&xfrm_policy_inexact_table, &k,
         xfrm_pol_inexact_params);
 if (bin)
  return bin;

 bin = kzalloc(sizeof(*bin), GFP_ATOMIC);
 if (!bin)
  return ((void*)0);

 bin->k = k;
 INIT_HLIST_HEAD(&bin->hhead);
 bin->root_d = RB_ROOT;
 bin->root_s = RB_ROOT;
 seqcount_init(&bin->count);

 prev = rhashtable_lookup_get_insert_key(&xfrm_policy_inexact_table,
      &bin->k, &bin->head,
      xfrm_pol_inexact_params);
 if (!prev) {
  list_add(&bin->inexact_bins, &net->xfrm.inexact_bins);
  return bin;
 }

 kfree(bin);

 return IS_ERR(prev) ? ((void*)0) : prev;
}
