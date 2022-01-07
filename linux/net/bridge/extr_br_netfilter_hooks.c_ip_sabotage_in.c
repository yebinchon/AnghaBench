
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct nf_hook_state {int sk; int net; int (* okfn ) (int ,int ,struct sk_buff*) ;} ;
struct nf_bridge_info {int in_prerouting; } ;


 unsigned int NF_ACCEPT ;
 unsigned int NF_STOLEN ;
 int netif_is_l3_master (int ) ;
 int netif_is_l3_slave (int ) ;
 struct nf_bridge_info* nf_bridge_info_get (struct sk_buff*) ;
 int stub1 (int ,int ,struct sk_buff*) ;

__attribute__((used)) static unsigned int ip_sabotage_in(void *priv,
       struct sk_buff *skb,
       const struct nf_hook_state *state)
{
 struct nf_bridge_info *nf_bridge = nf_bridge_info_get(skb);

 if (nf_bridge && !nf_bridge->in_prerouting &&
     !netif_is_l3_master(skb->dev) &&
     !netif_is_l3_slave(skb->dev)) {
  state->okfn(state->net, state->sk, skb);
  return NF_STOLEN;
 }

 return NF_ACCEPT;
}
