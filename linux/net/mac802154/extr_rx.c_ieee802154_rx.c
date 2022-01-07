
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_2__ {int flags; } ;
struct ieee802154_local {TYPE_1__ hw; scalar_t__ suspended; } ;


 int IEEE802154_HW_RX_DROP_BAD_CKSUM ;
 int IEEE802154_HW_RX_OMIT_CKSUM ;
 int WARN_ON_ONCE (int) ;
 int __ieee802154_rx_handle_packet (struct ieee802154_local*,struct sk_buff*) ;
 scalar_t__ crc_ccitt (int ,int ,scalar_t__) ;
 int ieee802154_monitors_rx (struct ieee802154_local*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int put_unaligned_le16 (scalar_t__,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_put (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;
 scalar_t__ softirq_count () ;

void ieee802154_rx(struct ieee802154_local *local, struct sk_buff *skb)
{
 u16 crc;

 WARN_ON_ONCE(softirq_count() == 0);

 if (local->suspended)
  goto drop;





 if (local->hw.flags & IEEE802154_HW_RX_OMIT_CKSUM) {
  crc = crc_ccitt(0, skb->data, skb->len);
  put_unaligned_le16(crc, skb_put(skb, 2));
 }

 rcu_read_lock();

 ieee802154_monitors_rx(local, skb);




 if (local->hw.flags & IEEE802154_HW_RX_DROP_BAD_CKSUM) {
  crc = crc_ccitt(0, skb->data, skb->len);
  if (crc) {
   rcu_read_unlock();
   goto drop;
  }
 }

 skb_trim(skb, skb->len - 2);

 __ieee802154_rx_handle_packet(local, skb);

 rcu_read_unlock();

 return;
drop:
 kfree_skb(skb);
}
