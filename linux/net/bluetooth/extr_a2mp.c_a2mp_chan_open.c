
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int state; void* omtu; void* mps; void* remote_mps; scalar_t__ conf_state; int mode; int tx_q; int monitor_timeout; int retrans_timeout; int tx_win; int remote_tx_win; int max_tx; int remote_max_tx; int * ops; int flush_to; void* imtu; void* dcid; void* scid; int chan_type; } ;


 int BT_CONNECTED ;
 int BT_DBG (char*,struct l2cap_chan*) ;
 void* L2CAP_A2MP_DEFAULT_MTU ;
 int L2CAP_CHAN_FIXED ;
 void* L2CAP_CID_A2MP ;
 int L2CAP_DEFAULT_FLUSH_TO ;
 int L2CAP_DEFAULT_MONITOR_TO ;
 int L2CAP_DEFAULT_RETRANS_TO ;
 int L2CAP_MODE_ERTM ;
 int __l2cap_chan_add (struct l2cap_conn*,struct l2cap_chan*) ;
 int a2mp_chan_ops ;
 int l2cap_chan_add (struct l2cap_conn*,struct l2cap_chan*) ;
 struct l2cap_chan* l2cap_chan_create () ;
 int l2cap_chan_del (struct l2cap_chan*,int ) ;
 int l2cap_chan_set_defaults (struct l2cap_chan*) ;
 int l2cap_ertm_init (struct l2cap_chan*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct l2cap_chan *a2mp_chan_open(struct l2cap_conn *conn, bool locked)
{
 struct l2cap_chan *chan;
 int err;

 chan = l2cap_chan_create();
 if (!chan)
  return ((void*)0);

 BT_DBG("chan %p", chan);

 chan->chan_type = L2CAP_CHAN_FIXED;
 chan->scid = L2CAP_CID_A2MP;
 chan->dcid = L2CAP_CID_A2MP;
 chan->omtu = L2CAP_A2MP_DEFAULT_MTU;
 chan->imtu = L2CAP_A2MP_DEFAULT_MTU;
 chan->flush_to = L2CAP_DEFAULT_FLUSH_TO;

 chan->ops = &a2mp_chan_ops;

 l2cap_chan_set_defaults(chan);
 chan->remote_max_tx = chan->max_tx;
 chan->remote_tx_win = chan->tx_win;

 chan->retrans_timeout = L2CAP_DEFAULT_RETRANS_TO;
 chan->monitor_timeout = L2CAP_DEFAULT_MONITOR_TO;

 skb_queue_head_init(&chan->tx_q);

 chan->mode = L2CAP_MODE_ERTM;

 err = l2cap_ertm_init(chan);
 if (err < 0) {
  l2cap_chan_del(chan, 0);
  return ((void*)0);
 }

 chan->conf_state = 0;

 if (locked)
  __l2cap_chan_add(conn, chan);
 else
  l2cap_chan_add(conn, chan);

 chan->remote_mps = chan->omtu;
 chan->mps = chan->omtu;

 chan->state = BT_CONNECTED;

 return chan;
}
