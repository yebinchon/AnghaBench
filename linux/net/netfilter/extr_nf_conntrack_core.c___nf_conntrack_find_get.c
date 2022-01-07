
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_2__ {int use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;
struct net {int dummy; } ;


 struct nf_conntrack_tuple_hash* ____nf_conntrack_find (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple const*,int ) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ likely (int ) ;
 int nf_ct_key_equal (struct nf_conntrack_tuple_hash*,struct nf_conntrack_tuple const*,struct nf_conntrack_zone const*,struct net*) ;
 int nf_ct_put (struct nf_conn*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct nf_conntrack_tuple_hash *
__nf_conntrack_find_get(struct net *net, const struct nf_conntrack_zone *zone,
   const struct nf_conntrack_tuple *tuple, u32 hash)
{
 struct nf_conntrack_tuple_hash *h;
 struct nf_conn *ct;

 rcu_read_lock();

 h = ____nf_conntrack_find(net, zone, tuple, hash);
 if (h) {



  ct = nf_ct_tuplehash_to_ctrack(h);
  if (likely(atomic_inc_not_zero(&ct->ct_general.use))) {
   if (likely(nf_ct_key_equal(h, tuple, zone, net)))
    goto found;


   nf_ct_put(ct);
  }

  h = ((void*)0);
 }
found:
 rcu_read_unlock();

 return h;
}
