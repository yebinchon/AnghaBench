
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct TYPE_3__ {int dir; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct nf_conntrack_tuple_hash {TYPE_2__ tuple; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {struct nf_conntrack_tuple_hash* tuplehash; } ;
struct net {int dummy; } ;


 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ;
 int nf_ct_get_tuplepr (struct sk_buff*,int ,int ,struct net*,struct nf_conntrack_tuple*) ;
 int nf_ct_invert_tuple (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ;
 int nf_ct_set (struct sk_buff*,struct nf_conn*,int ) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 int ovs_ct_get_info (struct nf_conntrack_tuple_hash*) ;
 int pr_debug (char*) ;
 int skb_network_offset (struct sk_buff*) ;

__attribute__((used)) static struct nf_conn *
ovs_ct_find_existing(struct net *net, const struct nf_conntrack_zone *zone,
       u8 l3num, struct sk_buff *skb, bool natted)
{
 struct nf_conntrack_tuple tuple;
 struct nf_conntrack_tuple_hash *h;
 struct nf_conn *ct;

 if (!nf_ct_get_tuplepr(skb, skb_network_offset(skb), l3num,
          net, &tuple)) {
  pr_debug("ovs_ct_find_existing: Can't get tuple\n");
  return ((void*)0);
 }


 if (natted) {
  struct nf_conntrack_tuple inverse;

  if (!nf_ct_invert_tuple(&inverse, &tuple)) {
   pr_debug("ovs_ct_find_existing: Inversion failed!\n");
   return ((void*)0);
  }
  tuple = inverse;
 }


 h = nf_conntrack_find_get(net, zone, &tuple);
 if (!h)
  return ((void*)0);

 ct = nf_ct_tuplehash_to_ctrack(h);





 if (natted)
  h = &ct->tuplehash[!h->tuple.dst.dir];

 nf_ct_set(skb, ct, ovs_ct_get_info(h));
 return ct;
}
