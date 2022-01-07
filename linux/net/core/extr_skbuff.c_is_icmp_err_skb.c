
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ ee_origin; } ;
struct TYPE_4__ {TYPE_1__ ee; } ;


 TYPE_2__* SKB_EXT_ERR (struct sk_buff const*) ;
 scalar_t__ SO_EE_ORIGIN_ICMP ;
 scalar_t__ SO_EE_ORIGIN_ICMP6 ;

__attribute__((used)) static bool is_icmp_err_skb(const struct sk_buff *skb)
{
 return skb && (SKB_EXT_ERR(skb)->ee.ee_origin == SO_EE_ORIGIN_ICMP ||
         SKB_EXT_ERR(skb)->ee.ee_origin == SO_EE_ORIGIN_ICMP6);
}
