
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xfrm_selector {int dummy; } ;
struct TYPE_4__ {int xfrm_policy_lock; TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {unsigned int hmask; int table; } ;


 int __get_hash_thresh (struct net*,unsigned short,int,int *,int *) ;
 unsigned int __sel_hash (struct xfrm_selector const*,unsigned short,unsigned int,int ,int ) ;
 int lockdep_is_held (int *) ;
 struct hlist_head* rcu_dereference_check (int ,int ) ;

__attribute__((used)) static struct hlist_head *policy_hash_bysel(struct net *net,
         const struct xfrm_selector *sel,
         unsigned short family, int dir)
{
 unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;
 unsigned int hash;
 u8 dbits;
 u8 sbits;

 __get_hash_thresh(net, family, dir, &dbits, &sbits);
 hash = __sel_hash(sel, family, hmask, dbits, sbits);

 if (hash == hmask + 1)
  return ((void*)0);

 return rcu_dereference_check(net->xfrm.policy_bydst[dir].table,
       lockdep_is_held(&net->xfrm.xfrm_policy_lock)) + hash;
}
