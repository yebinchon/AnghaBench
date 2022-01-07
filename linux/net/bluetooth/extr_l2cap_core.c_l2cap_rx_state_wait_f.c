
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int reqseq; int final; } ;
struct l2cap_chan {TYPE_5__* conn; TYPE_2__* hs_hcon; scalar_t__ unacked_frames; int next_tx_seq; int * tx_send_head; int tx_q; int rx_state; int conn_state; } ;
struct TYPE_10__ {TYPE_4__* hcon; int mtu; } ;
struct TYPE_9__ {TYPE_3__* hdev; } ;
struct TYPE_8__ {int acl_mtu; } ;
struct TYPE_7__ {TYPE_1__* hdev; } ;
struct TYPE_6__ {int block_mtu; } ;


 int CONN_REMOTE_BUSY ;
 int EPROTO ;
 int L2CAP_RX_STATE_RECV ;
 int clear_bit (int ,int *) ;
 int l2cap_process_reqseq (struct l2cap_chan*,int ) ;
 int l2cap_resegment (struct l2cap_chan*) ;
 int l2cap_rx_state_recv (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int ) ;
 int * skb_peek (int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static int l2cap_rx_state_wait_f(struct l2cap_chan *chan,
     struct l2cap_ctrl *control,
     struct sk_buff *skb, u8 event)
{
 int err;

 if (!control->final)
  return -EPROTO;

 clear_bit(CONN_REMOTE_BUSY, &chan->conn_state);

 chan->rx_state = L2CAP_RX_STATE_RECV;
 l2cap_process_reqseq(chan, control->reqseq);

 if (!skb_queue_empty(&chan->tx_q))
  chan->tx_send_head = skb_peek(&chan->tx_q);
 else
  chan->tx_send_head = ((void*)0);




 chan->next_tx_seq = control->reqseq;
 chan->unacked_frames = 0;

 if (chan->hs_hcon)
  chan->conn->mtu = chan->hs_hcon->hdev->block_mtu;
 else
  chan->conn->mtu = chan->conn->hcon->hdev->acl_mtu;

 err = l2cap_resegment(chan);

 if (!err)
  err = l2cap_rx_state_recv(chan, control, skb, event);

 return err;
}
