
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_result {int dummy; } ;
struct tcf_ctinfo_params {int mode; int dscpstatemask; int net; int zone; } ;
struct tcf_ctinfo {int tcf_action; int tcf_bstats; int tcf_tm; int params; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_zone {int dir; int id; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int mark; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int CTINFO_MODE_CPMARK ;
 int CTINFO_MODE_DSCP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int NFPROTO_IPV4 ;
 int NFPROTO_IPV6 ;
 int NF_CT_DEFAULT_ZONE_DIR ;
 int READ_ONCE (int ) ;
 int bstats_update (int *,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (int ,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_get_tuplepr (struct sk_buff*,int,int,int ,struct nf_conntrack_tuple*) ;
 int nf_ct_put (struct nf_conn*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash const*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct tcf_ctinfo_params* rcu_dereference_bh (int ) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ tc_skb_protocol (struct sk_buff*) ;
 int tcf_ctinfo_cpmark_set (struct nf_conn*,struct tcf_ctinfo*,struct tcf_ctinfo_params*,struct sk_buff*) ;
 int tcf_ctinfo_dscp_set (struct nf_conn*,struct tcf_ctinfo*,struct tcf_ctinfo_params*,struct sk_buff*,int,int) ;
 int tcf_lastuse_update (int *) ;
 struct tcf_ctinfo* to_ctinfo (struct tc_action const*) ;

__attribute__((used)) static int tcf_ctinfo_act(struct sk_buff *skb, const struct tc_action *a,
     struct tcf_result *res)
{
 const struct nf_conntrack_tuple_hash *thash = ((void*)0);
 struct tcf_ctinfo *ca = to_ctinfo(a);
 struct nf_conntrack_tuple tuple;
 struct nf_conntrack_zone zone;
 enum ip_conntrack_info ctinfo;
 struct tcf_ctinfo_params *cp;
 struct nf_conn *ct;
 int proto, wlen;
 int action;

 cp = rcu_dereference_bh(ca->params);

 tcf_lastuse_update(&ca->tcf_tm);
 bstats_update(&ca->tcf_bstats, skb);
 action = READ_ONCE(ca->tcf_action);

 wlen = skb_network_offset(skb);
 if (tc_skb_protocol(skb) == htons(ETH_P_IP)) {
  wlen += sizeof(struct iphdr);
  if (!pskb_may_pull(skb, wlen))
   goto out;

  proto = NFPROTO_IPV4;
 } else if (tc_skb_protocol(skb) == htons(ETH_P_IPV6)) {
  wlen += sizeof(struct ipv6hdr);
  if (!pskb_may_pull(skb, wlen))
   goto out;

  proto = NFPROTO_IPV6;
 } else {
  goto out;
 }

 ct = nf_ct_get(skb, &ctinfo);
 if (!ct) {
  if (!nf_ct_get_tuplepr(skb, skb_network_offset(skb),
           proto, cp->net, &tuple))
   goto out;
  zone.id = cp->zone;
  zone.dir = NF_CT_DEFAULT_ZONE_DIR;

  thash = nf_conntrack_find_get(cp->net, &zone, &tuple);
  if (!thash)
   goto out;

  ct = nf_ct_tuplehash_to_ctrack(thash);
 }

 if (cp->mode & CTINFO_MODE_DSCP)
  if (!cp->dscpstatemask || (ct->mark & cp->dscpstatemask))
   tcf_ctinfo_dscp_set(ct, ca, cp, skb, wlen, proto);

 if (cp->mode & CTINFO_MODE_CPMARK)
  tcf_ctinfo_cpmark_set(ct, ca, cp, skb);

 if (thash)
  nf_ct_put(ct);
out:
 return action;
}
