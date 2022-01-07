
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int pkt_type; } ;
struct ieee802154_local {int tasklet; int skb_queue; } ;
struct ieee802154_hw {int dummy; } ;
struct TYPE_2__ {int lqi; } ;


 int IEEE802154_RX_MSG ;
 struct ieee802154_local* hw_to_local (struct ieee802154_hw*) ;
 TYPE_1__* mac_cb (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

void
ieee802154_rx_irqsafe(struct ieee802154_hw *hw, struct sk_buff *skb, u8 lqi)
{
 struct ieee802154_local *local = hw_to_local(hw);

 mac_cb(skb)->lqi = lqi;
 skb->pkt_type = IEEE802154_RX_MSG;
 skb_queue_tail(&local->skb_queue, skb);
 tasklet_schedule(&local->tasklet);
}
