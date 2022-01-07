
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; } ;
struct ieee802154_local {int skb_queue; } ;



 int WARN (int,char*,int) ;
 int ieee802154_rx (struct ieee802154_local*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void ieee802154_tasklet_handler(unsigned long data)
{
 struct ieee802154_local *local = (struct ieee802154_local *)data;
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&local->skb_queue))) {
  switch (skb->pkt_type) {
  case 128:



   skb->pkt_type = 0;
   ieee802154_rx(local, skb);
   break;
  default:
   WARN(1, "mac802154: Packet is of unknown type %d\n",
        skb->pkt_type);
   kfree_skb(skb);
   break;
  }
 }
}
