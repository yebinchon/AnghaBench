
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
typedef int lowpan_rx_result ;
struct TYPE_2__ {int name; } ;


 int RX_CONTINUE ;
 int RX_DROP_UNUSABLE ;
 int lowpan_is_bc0 (int ) ;
 int net_warn_ratelimited (char*,int ,char*) ;
 int * skb_network_header (struct sk_buff*) ;

__attribute__((used)) static lowpan_rx_result lowpan_rx_h_bc0(struct sk_buff *skb)
{
 if (!lowpan_is_bc0(*skb_network_header(skb)))
  return RX_CONTINUE;

 net_warn_ratelimited("%s: %s\n", skb->dev->name,
        "6LoWPAN BC0 not supported\n");

 return RX_DROP_UNUSABLE;
}
