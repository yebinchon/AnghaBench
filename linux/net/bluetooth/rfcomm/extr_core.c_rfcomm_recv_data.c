
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rfcomm_session {int state; } ;
struct rfcomm_dlc {scalar_t__ state; int (* data_ready ) (struct rfcomm_dlc*,struct sk_buff*) ;int rx_credits; int flags; scalar_t__ tx_credits; scalar_t__ cfc; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_session*,int ,scalar_t__,int) ;
 int RFCOMM_TX_THROTTLED ;
 int clear_bit (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct rfcomm_dlc* rfcomm_dlc_get (struct rfcomm_session*,scalar_t__) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_send_dm (struct rfcomm_session*,scalar_t__) ;
 int skb_pull (struct sk_buff*,int) ;
 int stub1 (struct rfcomm_dlc*,struct sk_buff*) ;

__attribute__((used)) static int rfcomm_recv_data(struct rfcomm_session *s, u8 dlci, int pf, struct sk_buff *skb)
{
 struct rfcomm_dlc *d;

 BT_DBG("session %p state %ld dlci %d pf %d", s, s->state, dlci, pf);

 d = rfcomm_dlc_get(s, dlci);
 if (!d) {
  rfcomm_send_dm(s, dlci);
  goto drop;
 }

 if (pf && d->cfc) {
  u8 credits = *(u8 *) skb->data; skb_pull(skb, 1);

  d->tx_credits += credits;
  if (d->tx_credits)
   clear_bit(RFCOMM_TX_THROTTLED, &d->flags);
 }

 if (skb->len && d->state == BT_CONNECTED) {
  rfcomm_dlc_lock(d);
  d->rx_credits--;
  d->data_ready(d, skb);
  rfcomm_dlc_unlock(d);
  return 0;
 }

drop:
 kfree_skb(skb);
 return 0;
}
