
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int dummy; } ;
struct tcf_mpls_params {int tcfm_action; int tcfm_proto; } ;
struct TYPE_2__ {int cpu_qstats; int cpu_bstats; } ;
struct tcf_mpls {TYPE_1__ common; int mpls_p; int tcf_action; int tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int mac_len; int protocol; } ;
typedef int __be32 ;


 int READ_ONCE (int ) ;




 int TC_ACT_SHOT ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 int eth_p_mpls (int ) ;
 int * mpls_hdr (struct sk_buff*) ;
 int qstats_drop_inc (int ) ;
 struct tcf_mpls_params* rcu_dereference_bh (int ) ;
 scalar_t__ skb_at_tc_ingress (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_mpls_dec_ttl (struct sk_buff*) ;
 int skb_mpls_pop (struct sk_buff*,int ,int) ;
 int skb_mpls_push (struct sk_buff*,int ,int ,int) ;
 int skb_mpls_update_lse (struct sk_buff*,int ) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 int skb_push_rcsum (struct sk_buff*,int) ;
 int tcf_lastuse_update (int *) ;
 int tcf_mpls_get_lse (int *,struct tcf_mpls_params*,int) ;
 int this_cpu_ptr (int ) ;
 struct tcf_mpls* to_mpls (struct tc_action const*) ;

__attribute__((used)) static int tcf_mpls_act(struct sk_buff *skb, const struct tc_action *a,
   struct tcf_result *res)
{
 struct tcf_mpls *m = to_mpls(a);
 struct tcf_mpls_params *p;
 __be32 new_lse;
 int ret, mac_len;

 tcf_lastuse_update(&m->tcf_tm);
 bstats_cpu_update(this_cpu_ptr(m->common.cpu_bstats), skb);




 if (skb_at_tc_ingress(skb)) {
  skb_push_rcsum(skb, skb->mac_len);
  mac_len = skb->mac_len;
 } else {
  mac_len = skb_network_header(skb) - skb_mac_header(skb);
 }

 ret = READ_ONCE(m->tcf_action);

 p = rcu_dereference_bh(m->mpls_p);

 switch (p->tcfm_action) {
 case 129:
  if (skb_mpls_pop(skb, p->tcfm_proto, mac_len))
   goto drop;
  break;
 case 128:
  new_lse = tcf_mpls_get_lse(((void*)0), p, !eth_p_mpls(skb->protocol));
  if (skb_mpls_push(skb, new_lse, p->tcfm_proto, mac_len))
   goto drop;
  break;
 case 130:
  new_lse = tcf_mpls_get_lse(mpls_hdr(skb), p, 0);
  if (skb_mpls_update_lse(skb, new_lse))
   goto drop;
  break;
 case 131:
  if (skb_mpls_dec_ttl(skb))
   goto drop;
  break;
 }

 if (skb_at_tc_ingress(skb))
  skb_pull_rcsum(skb, skb->mac_len);

 return ret;

drop:
 qstats_drop_inc(this_cpu_ptr(m->common.cpu_qstats));
 return TC_ACT_SHOT;
}
