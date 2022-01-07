
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int xfrm_policy_lock; TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {unsigned int hmask; int table; } ;


 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct hlist_head*) ;
 struct hlist_head* rcu_dereference_protected (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;
 int xfrm_dst_hash_transfer (struct net*,struct hlist_head*,struct hlist_head*,unsigned int,int) ;
 struct hlist_head* xfrm_hash_alloc (unsigned int) ;
 int xfrm_hash_free (struct hlist_head*,unsigned int) ;
 unsigned int xfrm_new_hash_mask (unsigned int) ;
 int xfrm_policy_hash_generation ;

__attribute__((used)) static void xfrm_bydst_resize(struct net *net, int dir)
{
 unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;
 unsigned int nhashmask = xfrm_new_hash_mask(hmask);
 unsigned int nsize = (nhashmask + 1) * sizeof(struct hlist_head);
 struct hlist_head *ndst = xfrm_hash_alloc(nsize);
 struct hlist_head *odst;
 int i;

 if (!ndst)
  return;

 spin_lock_bh(&net->xfrm.xfrm_policy_lock);
 write_seqcount_begin(&xfrm_policy_hash_generation);

 odst = rcu_dereference_protected(net->xfrm.policy_bydst[dir].table,
    lockdep_is_held(&net->xfrm.xfrm_policy_lock));

 for (i = hmask; i >= 0; i--)
  xfrm_dst_hash_transfer(net, odst + i, ndst, nhashmask, dir);

 rcu_assign_pointer(net->xfrm.policy_bydst[dir].table, ndst);
 net->xfrm.policy_bydst[dir].hmask = nhashmask;

 write_seqcount_end(&xfrm_policy_hash_generation);
 spin_unlock_bh(&net->xfrm.xfrm_policy_lock);

 synchronize_rcu();

 xfrm_hash_free(odst, (hmask + 1) * sizeof(struct hlist_head));
}
