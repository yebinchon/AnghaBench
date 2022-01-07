
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_hook_state {TYPE_2__* net; } ;
struct TYPE_3__ {int ip6table_raw; } ;
struct TYPE_4__ {TYPE_1__ ipv6; } ;


 unsigned int ip6t_do_table (struct sk_buff*,struct nf_hook_state const*,int ) ;

__attribute__((used)) static unsigned int
ip6table_raw_hook(void *priv, struct sk_buff *skb,
    const struct nf_hook_state *state)
{
 return ip6t_do_table(skb, state, state->net->ipv6.ip6table_raw);
}
