
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_hook_state {scalar_t__ hook; TYPE_2__* net; } ;
struct TYPE_3__ {int ip6table_mangle; } ;
struct TYPE_4__ {TYPE_1__ ipv6; } ;


 scalar_t__ NF_INET_LOCAL_OUT ;
 unsigned int ip6t_do_table (struct sk_buff*,struct nf_hook_state const*,int ) ;
 unsigned int ip6t_mangle_out (struct sk_buff*,struct nf_hook_state const*) ;

__attribute__((used)) static unsigned int
ip6table_mangle_hook(void *priv, struct sk_buff *skb,
       const struct nf_hook_state *state)
{
 if (state->hook == NF_INET_LOCAL_OUT)
  return ip6t_mangle_out(skb, state);
 return ip6t_do_table(skb, state, state->net->ipv6.ip6table_mangle);
}
