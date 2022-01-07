
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int SKB_ALLOC_RX ;
 scalar_t__ skb_pfmemalloc (struct sk_buff const*) ;

__attribute__((used)) static inline int skb_alloc_rx_flag(const struct sk_buff *skb)
{
 if (skb_pfmemalloc(skb))
  return SKB_ALLOC_RX;
 return 0;
}
