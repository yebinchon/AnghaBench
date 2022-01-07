
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;


 unsigned int nf_conntrack_in (struct sk_buff*,struct nf_hook_state const*) ;

__attribute__((used)) static unsigned int ipv4_conntrack_in(void *priv,
          struct sk_buff *skb,
          const struct nf_hook_state *state)
{
 return nf_conntrack_in(skb, state);
}
