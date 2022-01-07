
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff_head {int dummy; } ;
struct l2cap_ctrl {int dummy; } ;
struct l2cap_chan {int tx_state; } ;


 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff_head*,int ,int) ;


 int l2cap_tx_state_wait_f (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff_head*,int ) ;
 int l2cap_tx_state_xmit (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff_head*,int ) ;

__attribute__((used)) static void l2cap_tx(struct l2cap_chan *chan, struct l2cap_ctrl *control,
       struct sk_buff_head *skbs, u8 event)
{
 BT_DBG("chan %p, control %p, skbs %p, event %d, state %d",
        chan, control, skbs, event, chan->tx_state);

 switch (chan->tx_state) {
 case 128:
  l2cap_tx_state_xmit(chan, control, skbs, event);
  break;
 case 129:
  l2cap_tx_state_wait_f(chan, control, skbs, event);
  break;
 default:

  break;
 }
}
