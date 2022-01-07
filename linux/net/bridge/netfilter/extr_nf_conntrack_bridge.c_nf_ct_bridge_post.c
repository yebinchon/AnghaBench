
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;


 int NF_ACCEPT ;
 int nf_ct_bridge_confirm (struct sk_buff*) ;
 unsigned int nf_ct_bridge_refrag (struct sk_buff*,struct nf_hook_state const*,int ) ;
 int nf_ct_bridge_refrag_post ;

__attribute__((used)) static unsigned int nf_ct_bridge_post(void *priv, struct sk_buff *skb,
          const struct nf_hook_state *state)
{
 int ret;

 ret = nf_ct_bridge_confirm(skb);
 if (ret != NF_ACCEPT)
  return ret;

 return nf_ct_bridge_refrag(skb, state, nf_ct_bridge_refrag_post);
}
