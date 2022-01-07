
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_conf_rsp {int dummy; } ;
struct l2cap_chan {int conf_state; int ident; int conn; TYPE_1__* hs_hcon; struct hci_chan* hs_hchan; } ;
struct hci_chan {int dummy; } ;
struct TYPE_2__ {int l2cap_data; } ;


 int CONF_INPUT_DONE ;
 int l2cap_chan_ready (struct l2cap_chan*) ;
 int l2cap_ertm_init (struct l2cap_chan*) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int) ;
 int l2cap_send_efs_conf_rsp (struct l2cap_chan*,struct l2cap_conf_rsp*,int ,int ) ;
 int set_default_fcs (struct l2cap_chan*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_logical_finish_create(struct l2cap_chan *chan,
     struct hci_chan *hchan)
{
 struct l2cap_conf_rsp rsp;

 chan->hs_hchan = hchan;
 chan->hs_hcon->l2cap_data = chan->conn;

 l2cap_send_efs_conf_rsp(chan, &rsp, chan->ident, 0);

 if (test_bit(CONF_INPUT_DONE, &chan->conf_state)) {
  int err;

  set_default_fcs(chan);

  err = l2cap_ertm_init(chan);
  if (err < 0)
   l2cap_send_disconn_req(chan, -err);
  else
   l2cap_chan_ready(chan);
 }
}
