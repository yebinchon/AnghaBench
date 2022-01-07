
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u8 ;
struct TYPE_4__ {int xfrm_policy_lock; TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {unsigned int hmask; int table; } ;


 unsigned int __addr_hash (int const*,int const*,unsigned short,unsigned int,int ,int ) ;
 int __get_hash_thresh (struct net*,unsigned short,int,int *,int *) ;
 int lockdep_is_held (int *) ;
 struct hlist_head* rcu_dereference_check (int ,int ) ;

__attribute__((used)) static struct hlist_head *policy_hash_direct(struct net *net,
          const xfrm_address_t *daddr,
          const xfrm_address_t *saddr,
          unsigned short family, int dir)
{
 unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;
 unsigned int hash;
 u8 dbits;
 u8 sbits;

 __get_hash_thresh(net, family, dir, &dbits, &sbits);
 hash = __addr_hash(daddr, saddr, family, hmask, dbits, sbits);

 return rcu_dereference_check(net->xfrm.policy_bydst[dir].table,
       lockdep_is_held(&net->xfrm.xfrm_policy_lock)) + hash;
}
