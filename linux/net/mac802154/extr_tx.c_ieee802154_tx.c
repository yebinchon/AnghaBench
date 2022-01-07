
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ len; int data; struct net_device* dev; } ;
struct TYPE_6__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_7__ {int flags; } ;
struct ieee802154_local {int tx_work; int workqueue; struct sk_buff* tx_skb; TYPE_3__ hw; TYPE_1__* ops; } ;
typedef int netdev_tx_t ;
struct TYPE_5__ {scalar_t__ xmit_async; } ;


 int GFP_ATOMIC ;
 scalar_t__ IEEE802154_FCS_LEN ;
 int IEEE802154_HW_TX_OMIT_CKSUM ;
 int NETDEV_TX_OK ;
 int consume_skb (struct sk_buff*) ;
 int crc_ccitt (int ,int ,scalar_t__) ;
 int drv_xmit_async (struct ieee802154_local*,struct sk_buff*) ;
 int ieee802154_stop_queue (TYPE_3__*) ;
 int ieee802154_wake_queue (TYPE_3__*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (struct sk_buff*) ;
 int put_unaligned_le16 (int ,int ) ;
 int queue_work (int ,int *) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,scalar_t__,int ) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t
ieee802154_tx(struct ieee802154_local *local, struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 int ret;

 if (!(local->hw.flags & IEEE802154_HW_TX_OMIT_CKSUM)) {
  struct sk_buff *nskb;
  u16 crc;

  if (unlikely(skb_tailroom(skb) < IEEE802154_FCS_LEN)) {
   nskb = skb_copy_expand(skb, 0, IEEE802154_FCS_LEN,
            GFP_ATOMIC);
   if (likely(nskb)) {
    consume_skb(skb);
    skb = nskb;
   } else {
    goto err_tx;
   }
  }

  crc = crc_ccitt(0, skb->data, skb->len);
  put_unaligned_le16(crc, skb_put(skb, 2));
 }


 ieee802154_stop_queue(&local->hw);


 if (local->ops->xmit_async) {
  ret = drv_xmit_async(local, skb);
  if (ret) {
   ieee802154_wake_queue(&local->hw);
   goto err_tx;
  }

  dev->stats.tx_packets++;
  dev->stats.tx_bytes += skb->len;
 } else {
  local->tx_skb = skb;
  queue_work(local->workqueue, &local->tx_work);
 }

 return NETDEV_TX_OK;

err_tx:
 kfree_skb(skb);
 return NETDEV_TX_OK;
}
