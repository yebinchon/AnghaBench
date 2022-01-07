
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int dummy; } ;
struct TYPE_2__ {int overlimits; } ;
struct tcf_connmark_info {int tcf_action; int tcf_lock; TYPE_1__ tcf_qstats; int net; int zone; int tcf_bstats; int tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int len; int mark; } ;
struct nf_conntrack_zone {int dir; int id; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int mark; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int NFPROTO_IPV4 ;
 int NFPROTO_IPV6 ;
 int NF_CT_DEFAULT_ZONE_DIR ;
 int bstats_update (int *,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (int ,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_get_tuplepr (struct sk_buff*,int ,int,int ,struct nf_conntrack_tuple*) ;
 int nf_ct_put (struct nf_conn*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash const*) ;
 int skb_network_offset (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcf_lastuse_update (int *) ;
 struct tcf_connmark_info* to_connmark (struct tc_action const*) ;

__attribute__((used)) static int tcf_connmark_act(struct sk_buff *skb, const struct tc_action *a,
       struct tcf_result *res)
{
 const struct nf_conntrack_tuple_hash *thash;
 struct nf_conntrack_tuple tuple;
 enum ip_conntrack_info ctinfo;
 struct tcf_connmark_info *ca = to_connmark(a);
 struct nf_conntrack_zone zone;
 struct nf_conn *c;
 int proto;

 spin_lock(&ca->tcf_lock);
 tcf_lastuse_update(&ca->tcf_tm);
 bstats_update(&ca->tcf_bstats, skb);

 if (skb->protocol == htons(ETH_P_IP)) {
  if (skb->len < sizeof(struct iphdr))
   goto out;

  proto = NFPROTO_IPV4;
 } else if (skb->protocol == htons(ETH_P_IPV6)) {
  if (skb->len < sizeof(struct ipv6hdr))
   goto out;

  proto = NFPROTO_IPV6;
 } else {
  goto out;
 }

 c = nf_ct_get(skb, &ctinfo);
 if (c) {
  skb->mark = c->mark;

  ca->tcf_qstats.overlimits++;
  goto out;
 }

 if (!nf_ct_get_tuplepr(skb, skb_network_offset(skb),
          proto, ca->net, &tuple))
  goto out;

 zone.id = ca->zone;
 zone.dir = NF_CT_DEFAULT_ZONE_DIR;

 thash = nf_conntrack_find_get(ca->net, &zone, &tuple);
 if (!thash)
  goto out;

 c = nf_ct_tuplehash_to_ctrack(thash);

 ca->tcf_qstats.overlimits++;
 skb->mark = c->mark;
 nf_ct_put(c);

out:
 spin_unlock(&ca->tcf_lock);
 return ca->tcf_action;
}
