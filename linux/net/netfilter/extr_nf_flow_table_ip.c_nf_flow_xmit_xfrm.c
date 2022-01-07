
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int sk; int net; } ;
struct dst_entry {int dummy; } ;


 unsigned int NF_STOLEN ;
 int dst_output (int ,int ,struct sk_buff*) ;
 int skb_dst_set_noref (struct sk_buff*,struct dst_entry*) ;
 int skb_orphan (struct sk_buff*) ;

__attribute__((used)) static unsigned int nf_flow_xmit_xfrm(struct sk_buff *skb,
          const struct nf_hook_state *state,
          struct dst_entry *dst)
{
 skb_orphan(skb);
 skb_dst_set_noref(skb, dst);
 dst_output(state->net, state->sk, skb);
 return NF_STOLEN;
}
