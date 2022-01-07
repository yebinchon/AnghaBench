
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;
struct nf_conn {int ct_general; } ;
struct net {int dummy; } ;


 struct nf_conntrack_expect* __nf_ct_expect_find (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ;
 int nf_conntrack_put (int *) ;
 int nf_ct_delete (struct nf_conn*,int ,int ) ;
 int nf_ct_get_tuplepr (struct sk_buff const*,int ,int ,struct net*,struct nf_conntrack_tuple*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 int skb_network_offset (struct sk_buff const*) ;

__attribute__((used)) static struct nf_conntrack_expect *
ovs_ct_expect_find(struct net *net, const struct nf_conntrack_zone *zone,
     u16 proto, const struct sk_buff *skb)
{
 struct nf_conntrack_tuple tuple;
 struct nf_conntrack_expect *exp;

 if (!nf_ct_get_tuplepr(skb, skb_network_offset(skb), proto, net, &tuple))
  return ((void*)0);

 exp = __nf_ct_expect_find(net, zone, &tuple);
 if (exp) {
  struct nf_conntrack_tuple_hash *h;
  h = nf_conntrack_find_get(net, zone, &tuple);
  if (h) {
   struct nf_conn *ct = nf_ct_tuplehash_to_ctrack(h);

   nf_ct_delete(ct, 0, 0);
   nf_conntrack_put(&ct->ct_general);
  }
 }

 return exp;
}
