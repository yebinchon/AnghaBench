
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_hook_state {TYPE_2__* net; } ;
struct TYPE_3__ {int frame_nat; } ;
struct TYPE_4__ {TYPE_1__ xt; } ;


 unsigned int ebt_do_table (struct sk_buff*,struct nf_hook_state const*,int ) ;

__attribute__((used)) static unsigned int
ebt_nat_out(void *priv, struct sk_buff *skb,
     const struct nf_hook_state *state)
{
 return ebt_do_table(skb, state, state->net->xt.frame_nat);
}
