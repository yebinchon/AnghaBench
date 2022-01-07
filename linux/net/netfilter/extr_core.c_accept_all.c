
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;


 unsigned int NF_ACCEPT ;

__attribute__((used)) static unsigned int accept_all(void *priv,
          struct sk_buff *skb,
          const struct nf_hook_state *state)
{
 return NF_ACCEPT;
}
