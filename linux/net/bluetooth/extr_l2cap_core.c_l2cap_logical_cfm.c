
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct l2cap_chan {scalar_t__ state; scalar_t__ local_amp_id; } ;
struct hci_chan {int dummy; } ;


 scalar_t__ AMP_ID_BREDR ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct l2cap_chan*,struct hci_chan*,scalar_t__) ;
 int __release_logical_link (struct l2cap_chan*) ;
 int l2cap_logical_fail (struct l2cap_chan*) ;
 int l2cap_logical_finish_create (struct l2cap_chan*,struct hci_chan*) ;
 int l2cap_logical_finish_move (struct l2cap_chan*,struct hci_chan*) ;

void l2cap_logical_cfm(struct l2cap_chan *chan, struct hci_chan *hchan,
         u8 status)
{
 BT_DBG("chan %p, hchan %p, status %d", chan, hchan, status);

 if (status) {
  l2cap_logical_fail(chan);
  __release_logical_link(chan);
  return;
 }

 if (chan->state != BT_CONNECTED) {

  if (chan->local_amp_id != AMP_ID_BREDR)
   l2cap_logical_finish_create(chan, hchan);
 } else {
  l2cap_logical_finish_move(chan, hchan);
 }
}
