
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int _tsize_state; } ;


 int UDP_SKB_IS_STATELESS ;
 TYPE_1__* udp_skb_scratch (struct sk_buff*) ;

__attribute__((used)) static bool udp_skb_has_head_state(struct sk_buff *skb)
{
 return !(udp_skb_scratch(skb)->_tsize_state & UDP_SKB_IS_STATELESS);
}
