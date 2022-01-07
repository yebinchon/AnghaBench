
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_chan {scalar_t__ state; scalar_t__ mode; TYPE_1__* ops; int tx_credits; scalar_t__ conf_state; } ;
struct TYPE_2__ {int (* ready ) (struct l2cap_chan*) ;int (* suspend ) (struct l2cap_chan*) ;} ;


 scalar_t__ BT_CONNECTED ;
 scalar_t__ L2CAP_MODE_LE_FLOWCTL ;
 int __clear_chan_timer (struct l2cap_chan*) ;
 int stub1 (struct l2cap_chan*) ;
 int stub2 (struct l2cap_chan*) ;

__attribute__((used)) static void l2cap_chan_ready(struct l2cap_chan *chan)
{




 if (chan->state == BT_CONNECTED)
  return;


 chan->conf_state = 0;
 __clear_chan_timer(chan);

 if (chan->mode == L2CAP_MODE_LE_FLOWCTL && !chan->tx_credits)
  chan->ops->suspend(chan);

 chan->state = BT_CONNECTED;

 chan->ops->ready(chan);
}
