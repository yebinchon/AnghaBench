
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_move_chan_cfm {int result; int icid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int ident; } ;
struct l2cap_chan {scalar_t__ move_state; scalar_t__ local_amp_id; scalar_t__ move_id; } ;


 scalar_t__ AMP_ID_BREDR ;
 int BT_DBG (char*,int,int) ;
 int EPROTO ;
 int L2CAP_MC_CONFIRMED ;
 scalar_t__ L2CAP_MOVE_WAIT_CONFIRM ;
 int __release_logical_link (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 struct l2cap_chan* l2cap_get_chan_by_dcid (struct l2cap_conn*,int) ;
 int l2cap_move_done (struct l2cap_chan*) ;
 int l2cap_send_move_chan_cfm_rsp (struct l2cap_conn*,int ,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int l2cap_move_channel_confirm(struct l2cap_conn *conn,
          struct l2cap_cmd_hdr *cmd,
          u16 cmd_len, void *data)
{
 struct l2cap_move_chan_cfm *cfm = data;
 struct l2cap_chan *chan;
 u16 icid, result;

 if (cmd_len != sizeof(*cfm))
  return -EPROTO;

 icid = le16_to_cpu(cfm->icid);
 result = le16_to_cpu(cfm->result);

 BT_DBG("icid 0x%4.4x, result 0x%4.4x", icid, result);

 chan = l2cap_get_chan_by_dcid(conn, icid);
 if (!chan) {

  l2cap_send_move_chan_cfm_rsp(conn, cmd->ident, icid);
  return 0;
 }

 if (chan->move_state == L2CAP_MOVE_WAIT_CONFIRM) {
  if (result == L2CAP_MC_CONFIRMED) {
   chan->local_amp_id = chan->move_id;
   if (chan->local_amp_id == AMP_ID_BREDR)
    __release_logical_link(chan);
  } else {
   chan->move_id = chan->local_amp_id;
  }

  l2cap_move_done(chan);
 }

 l2cap_send_move_chan_cfm_rsp(conn, cmd->ident, icid);

 l2cap_chan_unlock(chan);

 return 0;
}
