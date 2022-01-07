
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;


 unsigned int NF_ACCEPT ;
 int ila_xlat_addr (struct sk_buff*,int) ;

__attribute__((used)) static unsigned int
ila_nf_input(void *priv,
      struct sk_buff *skb,
      const struct nf_hook_state *state)
{
 ila_xlat_addr(skb, 0);
 return NF_ACCEPT;
}
