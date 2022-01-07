
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct rfcomm_dlc {scalar_t__ state; int flags; int tx_queue; int addr; int mtu; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_dlc*,int ,int) ;
 int RFCOMM_TX_THROTTLED ;
 int rfcomm_make_uih (struct sk_buff*,int ) ;
 int rfcomm_schedule () ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

void rfcomm_dlc_send_noerror(struct rfcomm_dlc *d, struct sk_buff *skb)
{
 int len = skb->len;

 BT_DBG("dlc %p mtu %d len %d", d, d->mtu, len);

 rfcomm_make_uih(skb, d->addr);
 skb_queue_tail(&d->tx_queue, skb);

 if (d->state == BT_CONNECTED &&
     !test_bit(RFCOMM_TX_THROTTLED, &d->flags))
  rfcomm_schedule();
}
