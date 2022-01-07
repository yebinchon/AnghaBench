
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int tuple; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;


 int NF_CT_DIRECTION (struct nf_conntrack_tuple_hash*) ;
 scalar_t__ net_eq (struct net const*,int ) ;
 scalar_t__ nf_ct_is_confirmed (struct nf_conn*) ;
 int nf_ct_net (struct nf_conn*) ;
 scalar_t__ nf_ct_tuple_equal (struct nf_conntrack_tuple const*,int *) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 scalar_t__ nf_ct_zone_equal (struct nf_conn*,struct nf_conntrack_zone const*,int ) ;

__attribute__((used)) static inline bool
nf_ct_key_equal(struct nf_conntrack_tuple_hash *h,
  const struct nf_conntrack_tuple *tuple,
  const struct nf_conntrack_zone *zone,
  const struct net *net)
{
 struct nf_conn *ct = nf_ct_tuplehash_to_ctrack(h);




 return nf_ct_tuple_equal(tuple, &h->tuple) &&
        nf_ct_zone_equal(ct, zone, NF_CT_DIRECTION(h)) &&
        nf_ct_is_confirmed(ct) &&
        net_eq(net, nf_ct_net(ct));
}
