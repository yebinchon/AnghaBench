
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_conn {int info_state; TYPE_1__* hcon; } ;
struct l2cap_chan {struct l2cap_conn* conn; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int L2CAP_DISC_TIMEOUT ;
 int L2CAP_INFO_FEAT_MASK_REQ_DONE ;
 int L2CAP_INFO_FEAT_MASK_REQ_SENT ;
 scalar_t__ LE_LINK ;
 int __l2cap_no_conn_pending (struct l2cap_chan*) ;
 int __set_chan_timer (struct l2cap_chan*,int ) ;
 int l2cap_chan_check_security (struct l2cap_chan*,int) ;
 scalar_t__ l2cap_check_enc_key_size (TYPE_1__*) ;
 int l2cap_le_start (struct l2cap_chan*) ;
 int l2cap_request_info (struct l2cap_conn*) ;
 int l2cap_start_connection (struct l2cap_chan*) ;

__attribute__((used)) static void l2cap_do_start(struct l2cap_chan *chan)
{
 struct l2cap_conn *conn = chan->conn;

 if (conn->hcon->type == LE_LINK) {
  l2cap_le_start(chan);
  return;
 }

 if (!(conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_SENT)) {
  l2cap_request_info(conn);
  return;
 }

 if (!(conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_DONE))
  return;

 if (!l2cap_chan_check_security(chan, 1) ||
     !__l2cap_no_conn_pending(chan))
  return;

 if (l2cap_check_enc_key_size(conn->hcon))
  l2cap_start_connection(chan);
 else
  __set_chan_timer(chan, L2CAP_DISC_TIMEOUT);
}
