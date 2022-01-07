
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct l2cap_conn {TYPE_2__* hcon; } ;
struct l2cap_chan {scalar_t__ chan_type; int mode; int tx_q; int retrans_list; int srej_list; int srej_q; int conf_state; struct hci_chan* hs_hchan; int flags; struct l2cap_conn* conn; int list; TYPE_1__* ops; int state; } ;
struct hci_chan {int dummy; } ;
struct amp_mgr {struct l2cap_chan* bredr_chan; } ;
struct TYPE_4__ {struct amp_mgr* amp_mgr; } ;
struct TYPE_3__ {int (* teardown ) (struct l2cap_chan*,int) ;} ;


 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_conn*,...) ;
 int CONF_NOT_COMPLETE ;
 int FLAG_HOLD_HCI_CONN ;
 scalar_t__ L2CAP_CHAN_FIXED ;




 int __clear_ack_timer (struct l2cap_chan*) ;
 int __clear_chan_timer (struct l2cap_chan*) ;
 int __clear_monitor_timer (struct l2cap_chan*) ;
 int __clear_retrans_timer (struct l2cap_chan*) ;
 int amp_disconnect_logical_link (struct hci_chan*) ;
 int hci_conn_drop (TYPE_2__*) ;
 int l2cap_chan_put (struct l2cap_chan*) ;
 int l2cap_seq_list_free (int *) ;
 int list_del (int *) ;
 int skb_queue_purge (int *) ;
 int state_to_string (int ) ;
 int stub1 (struct l2cap_chan*,int) ;
 scalar_t__ test_bit (int ,int *) ;

void l2cap_chan_del(struct l2cap_chan *chan, int err)
{
 struct l2cap_conn *conn = chan->conn;

 __clear_chan_timer(chan);

 BT_DBG("chan %p, conn %p, err %d, state %s", chan, conn, err,
        state_to_string(chan->state));

 chan->ops->teardown(chan, err);

 if (conn) {
  struct amp_mgr *mgr = conn->hcon->amp_mgr;

  list_del(&chan->list);

  l2cap_chan_put(chan);

  chan->conn = ((void*)0);





  if (chan->chan_type != L2CAP_CHAN_FIXED ||
      test_bit(FLAG_HOLD_HCI_CONN, &chan->flags))
   hci_conn_drop(conn->hcon);

  if (mgr && mgr->bredr_chan == chan)
   mgr->bredr_chan = ((void*)0);
 }

 if (chan->hs_hchan) {
  struct hci_chan *hs_hchan = chan->hs_hchan;

  BT_DBG("chan %p disconnect hs_hchan %p", chan, hs_hchan);
  amp_disconnect_logical_link(hs_hchan);
 }

 if (test_bit(CONF_NOT_COMPLETE, &chan->conf_state))
  return;

 switch(chan->mode) {
 case 131:
  break;

 case 129:
  skb_queue_purge(&chan->tx_q);
  break;

 case 130:
  __clear_retrans_timer(chan);
  __clear_monitor_timer(chan);
  __clear_ack_timer(chan);

  skb_queue_purge(&chan->srej_q);

  l2cap_seq_list_free(&chan->srej_list);
  l2cap_seq_list_free(&chan->retrans_list);



 case 128:
  skb_queue_purge(&chan->tx_q);
  break;
 }

 return;
}
