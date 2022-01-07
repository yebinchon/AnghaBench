
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;


 unsigned int NF_ACCEPT ;
 int dnrmg_send_peer (struct sk_buff*) ;

__attribute__((used)) static unsigned int dnrmg_hook(void *priv,
   struct sk_buff *skb,
   const struct nf_hook_state *state)
{
 dnrmg_send_peer(skb);
 return NF_ACCEPT;
}
