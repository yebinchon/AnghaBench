
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int hook; int net; } ;


 int AF_INET ;
 unsigned int ip_vs_out (int ,int ,struct sk_buff*,int ) ;
 int net_ipvs (int ) ;

__attribute__((used)) static unsigned int
ip_vs_reply4(void *priv, struct sk_buff *skb,
      const struct nf_hook_state *state)
{
 return ip_vs_out(net_ipvs(state->net), state->hook, skb, AF_INET);
}
