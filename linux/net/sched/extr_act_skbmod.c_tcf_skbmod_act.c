
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct tcf_skbmod_params {int flags; int eth_type; int * eth_src; int * eth_dst; } ;
struct TYPE_3__ {int cpu_qstats; int cpu_bstats; } ;
struct tcf_skbmod {TYPE_1__ common; int skbmod_p; int tcf_action; int tcf_tm; } ;
struct tcf_result {int dummy; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int * h_source; int * h_dest; int h_proto; } ;


 int ETH_ALEN ;
 int MAX_EDIT_LEN ;
 int READ_ONCE (int ) ;
 int SKBMOD_F_DMAC ;
 int SKBMOD_F_ETYPE ;
 int SKBMOD_F_SMAC ;
 int SKBMOD_F_SWAPMAC ;
 int TC_ACT_SHOT ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int *,int *) ;
 int qstats_overlimit_inc (int ) ;
 struct tcf_skbmod_params* rcu_dereference_bh (int ) ;
 int skb_ensure_writable (struct sk_buff*,int ) ;
 int tcf_lastuse_update (int *) ;
 int this_cpu_ptr (int ) ;
 struct tcf_skbmod* to_skbmod (struct tc_action const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_skbmod_act(struct sk_buff *skb, const struct tc_action *a,
     struct tcf_result *res)
{
 struct tcf_skbmod *d = to_skbmod(a);
 int action;
 struct tcf_skbmod_params *p;
 u64 flags;
 int err;

 tcf_lastuse_update(&d->tcf_tm);
 bstats_cpu_update(this_cpu_ptr(d->common.cpu_bstats), skb);





 err = skb_ensure_writable(skb, MAX_EDIT_LEN);
 if (unlikely(err))
  goto drop;

 action = READ_ONCE(d->tcf_action);
 if (unlikely(action == TC_ACT_SHOT))
  goto drop;

 p = rcu_dereference_bh(d->skbmod_p);
 flags = p->flags;
 if (flags & SKBMOD_F_DMAC)
  ether_addr_copy(eth_hdr(skb)->h_dest, p->eth_dst);
 if (flags & SKBMOD_F_SMAC)
  ether_addr_copy(eth_hdr(skb)->h_source, p->eth_src);
 if (flags & SKBMOD_F_ETYPE)
  eth_hdr(skb)->h_proto = p->eth_type;

 if (flags & SKBMOD_F_SWAPMAC) {
  u16 tmpaddr[ETH_ALEN / 2];

  ether_addr_copy((u8 *)tmpaddr, eth_hdr(skb)->h_dest);
  ether_addr_copy(eth_hdr(skb)->h_dest, eth_hdr(skb)->h_source);
  ether_addr_copy(eth_hdr(skb)->h_source, (u8 *)tmpaddr);
 }

 return action;

drop:
 qstats_overlimit_inc(this_cpu_ptr(d->common.cpu_qstats));
 return TC_ACT_SHOT;
}
