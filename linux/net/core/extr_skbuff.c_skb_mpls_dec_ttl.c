
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int protocol; } ;
struct TYPE_2__ {int label_stack_entry; } ;


 int EINVAL ;
 int MPLS_LS_TTL_MASK ;
 int MPLS_LS_TTL_SHIFT ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int eth_p_mpls (int ) ;
 TYPE_1__* mpls_hdr (struct sk_buff*) ;
 int skb_mpls_update_lse (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

int skb_mpls_dec_ttl(struct sk_buff *skb)
{
 u32 lse;
 u8 ttl;

 if (unlikely(!eth_p_mpls(skb->protocol)))
  return -EINVAL;

 lse = be32_to_cpu(mpls_hdr(skb)->label_stack_entry);
 ttl = (lse & MPLS_LS_TTL_MASK) >> MPLS_LS_TTL_SHIFT;
 if (!--ttl)
  return -EINVAL;

 lse &= ~MPLS_LS_TTL_MASK;
 lse |= ttl << MPLS_LS_TTL_SHIFT;

 return skb_mpls_update_lse(skb, cpu_to_be32(lse));
}
