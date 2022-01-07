
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_type; } ;
struct l2cap_chan {int * ops; struct sock* data; int flush_to; int mode; int conf_state; scalar_t__ omtu; int imtu; int chan_type; int scid; int dcid; int rx_credits; int tx_credits; int flags; int sec_level; int tx_win_max; int tx_win; int max_tx; int fcs; } ;
struct TYPE_4__ {int skb_msg_name; int flags; } ;
struct TYPE_3__ {struct l2cap_chan* chan; } ;


 int BT_DBG (char*,struct sock*) ;
 int CONF_STATE2_DEVICE ;
 int L2CAP_CHAN_CONN_LESS ;
 int L2CAP_CHAN_CONN_ORIENTED ;
 int L2CAP_CHAN_FIXED ;
 int L2CAP_CHAN_RAW ;
 int L2CAP_DEFAULT_FLUSH_TO ;
 int L2CAP_DEFAULT_MTU ;
 int L2CAP_MODE_BASIC ;
 int L2CAP_MODE_ERTM ;




 TYPE_2__* bt_sk (struct sock*) ;
 int disable_ertm ;
 int l2cap_chan_ops ;
 int l2cap_chan_set_defaults (struct l2cap_chan*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_skb_msg_name ;
 int security_sk_clone (struct sock*,struct sock*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void l2cap_sock_init(struct sock *sk, struct sock *parent)
{
 struct l2cap_chan *chan = l2cap_pi(sk)->chan;

 BT_DBG("sk %p", sk);

 if (parent) {
  struct l2cap_chan *pchan = l2cap_pi(parent)->chan;

  sk->sk_type = parent->sk_type;
  bt_sk(sk)->flags = bt_sk(parent)->flags;

  chan->chan_type = pchan->chan_type;
  chan->imtu = pchan->imtu;
  chan->omtu = pchan->omtu;
  chan->conf_state = pchan->conf_state;
  chan->mode = pchan->mode;
  chan->fcs = pchan->fcs;
  chan->max_tx = pchan->max_tx;
  chan->tx_win = pchan->tx_win;
  chan->tx_win_max = pchan->tx_win_max;
  chan->sec_level = pchan->sec_level;
  chan->flags = pchan->flags;
  chan->tx_credits = pchan->tx_credits;
  chan->rx_credits = pchan->rx_credits;

  if (chan->chan_type == L2CAP_CHAN_FIXED) {
   chan->scid = pchan->scid;
   chan->dcid = pchan->scid;
  }

  security_sk_clone(parent, sk);
 } else {
  switch (sk->sk_type) {
  case 130:
   chan->chan_type = L2CAP_CHAN_RAW;
   break;
  case 131:
   chan->chan_type = L2CAP_CHAN_CONN_LESS;
   bt_sk(sk)->skb_msg_name = l2cap_skb_msg_name;
   break;
  case 129:
  case 128:
   chan->chan_type = L2CAP_CHAN_CONN_ORIENTED;
   break;
  }

  chan->imtu = L2CAP_DEFAULT_MTU;
  chan->omtu = 0;
  if (!disable_ertm && sk->sk_type == 128) {
   chan->mode = L2CAP_MODE_ERTM;
   set_bit(CONF_STATE2_DEVICE, &chan->conf_state);
  } else {
   chan->mode = L2CAP_MODE_BASIC;
  }

  l2cap_chan_set_defaults(chan);
 }


 chan->flush_to = L2CAP_DEFAULT_FLUSH_TO;

 chan->data = sk;
 chan->ops = &l2cap_chan_ops;
}
