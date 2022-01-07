
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned int len; scalar_t__ ignore_df; } ;
struct TYPE_4__ {unsigned int frag_max_size; } ;
struct TYPE_3__ {int frag_off; } ;


 TYPE_2__* IPCB (struct sk_buff const*) ;
 int IP_DF ;
 int htons (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff const*) ;
 scalar_t__ skb_gso_validate_network_len (struct sk_buff const*,unsigned int) ;
 scalar_t__ skb_is_gso (struct sk_buff const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ip_exceeds_mtu(const struct sk_buff *skb, unsigned int mtu)
{
 if (skb->len <= mtu)
  return 0;

 if (unlikely((ip_hdr(skb)->frag_off & htons(IP_DF)) == 0))
  return 0;


 if (unlikely(IPCB(skb)->frag_max_size > mtu))
  return 1;

 if (skb->ignore_df)
  return 0;

 if (skb_is_gso(skb) && skb_gso_validate_network_len(skb, mtu))
  return 0;

 return 1;
}
