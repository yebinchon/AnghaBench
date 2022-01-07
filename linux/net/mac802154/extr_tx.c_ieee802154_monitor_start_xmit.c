
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int skb_iif; } ;
struct net_device {int ifindex; } ;
struct ieee802154_sub_if_data {int local; } ;
typedef int netdev_tx_t ;


 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee802154_tx (int ,struct sk_buff*) ;

netdev_tx_t
ieee802154_monitor_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);

 skb->skb_iif = dev->ifindex;

 return ieee802154_tx(sdata->local, skb);
}
