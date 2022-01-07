
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_pol_inexact_bin {int inexact_bins; int head; int hhead; int root_s; int root_d; int count; } ;


 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON_ONCE (int) ;
 int hlist_empty (int *) ;
 int kfree_rcu (struct xfrm_pol_inexact_bin*,int ) ;
 int list_del (int *) ;
 int rcu ;
 scalar_t__ rhashtable_remove_fast (int *,int *,int ) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;
 int xfrm_pol_inexact_params ;
 int xfrm_policy_inexact_gc_tree (int *,int) ;
 int xfrm_policy_inexact_table ;

__attribute__((used)) static void __xfrm_policy_inexact_prune_bin(struct xfrm_pol_inexact_bin *b, bool net_exit)
{
 write_seqcount_begin(&b->count);
 xfrm_policy_inexact_gc_tree(&b->root_d, net_exit);
 xfrm_policy_inexact_gc_tree(&b->root_s, net_exit);
 write_seqcount_end(&b->count);

 if (!RB_EMPTY_ROOT(&b->root_d) || !RB_EMPTY_ROOT(&b->root_s) ||
     !hlist_empty(&b->hhead)) {
  WARN_ON_ONCE(net_exit);
  return;
 }

 if (rhashtable_remove_fast(&xfrm_policy_inexact_table, &b->head,
       xfrm_pol_inexact_params) == 0) {
  list_del(&b->inexact_bins);
  kfree_rcu(b, rcu);
 }
}
