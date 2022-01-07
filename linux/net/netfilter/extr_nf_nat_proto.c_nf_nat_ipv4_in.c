
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__ daddr; } ;


 unsigned int NF_ACCEPT ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 unsigned int nf_nat_ipv4_fn (void*,struct sk_buff*,struct nf_hook_state const*) ;
 int skb_dst_drop (struct sk_buff*) ;

__attribute__((used)) static unsigned int
nf_nat_ipv4_in(void *priv, struct sk_buff *skb,
        const struct nf_hook_state *state)
{
 unsigned int ret;
 __be32 daddr = ip_hdr(skb)->daddr;

 ret = nf_nat_ipv4_fn(priv, skb, state);
 if (ret == NF_ACCEPT && daddr != ip_hdr(skb)->daddr)
  skb_dst_drop(skb);

 return ret;
}
