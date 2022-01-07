
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int len; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {scalar_t__ chan_type; scalar_t__ state; int mode; int imtu; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* recv ) (struct l2cap_chan*,struct sk_buff*) ;} ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct l2cap_chan*,...) ;
 int BT_ERR (char*) ;
 scalar_t__ L2CAP_CHAN_FIXED ;
 scalar_t__ L2CAP_CID_A2MP ;




 struct l2cap_chan* a2mp_channel_create (struct l2cap_conn*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_ready (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int l2cap_data_rcv (struct l2cap_chan*,struct sk_buff*) ;
 struct l2cap_chan* l2cap_get_chan_by_scid (struct l2cap_conn*,scalar_t__) ;
 int l2cap_le_data_rcv (struct l2cap_chan*,struct sk_buff*) ;
 int stub1 (struct l2cap_chan*,struct sk_buff*) ;

__attribute__((used)) static void l2cap_data_channel(struct l2cap_conn *conn, u16 cid,
          struct sk_buff *skb)
{
 struct l2cap_chan *chan;

 chan = l2cap_get_chan_by_scid(conn, cid);
 if (!chan) {
  if (cid == L2CAP_CID_A2MP) {
   chan = a2mp_channel_create(conn, skb);
   if (!chan) {
    kfree_skb(skb);
    return;
   }

   l2cap_chan_lock(chan);
  } else {
   BT_DBG("unknown cid 0x%4.4x", cid);

   kfree_skb(skb);
   return;
  }
 }

 BT_DBG("chan %p, len %d", chan, skb->len);





 if (chan->chan_type == L2CAP_CHAN_FIXED)
  l2cap_chan_ready(chan);

 if (chan->state != BT_CONNECTED)
  goto drop;

 switch (chan->mode) {
 case 129:
  if (l2cap_le_data_rcv(chan, skb) < 0)
   goto drop;

  goto done;

 case 131:





  if (chan->imtu < skb->len) {
   BT_ERR("Dropping L2CAP data: receive buffer overflow");
   goto drop;
  }

  if (!chan->ops->recv(chan, skb))
   goto done;
  break;

 case 130:
 case 128:
  l2cap_data_rcv(chan, skb);
  goto done;

 default:
  BT_DBG("chan %p: bad mode 0x%2.2x", chan, chan->mode);
  break;
 }

drop:
 kfree_skb(skb);

done:
 l2cap_chan_unlock(chan);
}
