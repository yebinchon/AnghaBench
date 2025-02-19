
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_conf_req {int data; int flags; int dcid; } ;
struct l2cap_cmd_hdr {int ident; } ;
struct l2cap_chan {scalar_t__ state; int scid; int conf_len; scalar_t__ mode; int ident; int hs_hcon; int conf_state; int num_conf_req; int num_conf_rsp; scalar_t__ conf_req; int dcid; } ;
typedef int rsp ;
typedef int buf ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECT2 ;
 int BT_DBG (char*,int,int) ;
 int CONF_INPUT_DONE ;
 int CONF_LOC_CONF_PEND ;
 int CONF_OUTPUT_DONE ;
 int CONF_REM_CONF_PEND ;
 int CONF_REQ_SENT ;
 int ECONNRESET ;
 int EPROTO ;
 int L2CAP_CONF_FLAG_CONTINUATION ;
 int L2CAP_CONF_REJECT ;
 int L2CAP_CONF_REQ ;
 int L2CAP_CONF_RSP ;
 int L2CAP_CONF_SUCCESS ;
 scalar_t__ L2CAP_MODE_ERTM ;
 scalar_t__ L2CAP_MODE_STREAMING ;
 int __le16_to_cpu (int ) ;
 int cmd_reject_invalid_cid (struct l2cap_conn*,int ,int,int ) ;
 int l2cap_build_conf_req (struct l2cap_chan*,int *,int) ;
 int l2cap_build_conf_rsp (struct l2cap_chan*,int *,int ,int) ;
 int l2cap_chan_ready (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int l2cap_ertm_init (struct l2cap_chan*) ;
 struct l2cap_chan* l2cap_get_chan_by_scid (struct l2cap_conn*,int) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_parse_conf_req (struct l2cap_chan*,int *,int) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,int *) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int) ;
 int l2cap_send_efs_conf_rsp (struct l2cap_chan*,int *,int ,int) ;
 int memcpy (scalar_t__,int ,int) ;
 int set_default_fcs (struct l2cap_chan*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int l2cap_config_req(struct l2cap_conn *conn,
       struct l2cap_cmd_hdr *cmd, u16 cmd_len,
       u8 *data)
{
 struct l2cap_conf_req *req = (struct l2cap_conf_req *) data;
 u16 dcid, flags;
 u8 rsp[64];
 struct l2cap_chan *chan;
 int len, err = 0;

 if (cmd_len < sizeof(*req))
  return -EPROTO;

 dcid = __le16_to_cpu(req->dcid);
 flags = __le16_to_cpu(req->flags);

 BT_DBG("dcid 0x%4.4x flags 0x%2.2x", dcid, flags);

 chan = l2cap_get_chan_by_scid(conn, dcid);
 if (!chan) {
  cmd_reject_invalid_cid(conn, cmd->ident, dcid, 0);
  return 0;
 }

 if (chan->state != BT_CONFIG && chan->state != BT_CONNECT2) {
  cmd_reject_invalid_cid(conn, cmd->ident, chan->scid,
           chan->dcid);
  goto unlock;
 }


 len = cmd_len - sizeof(*req);
 if (chan->conf_len + len > sizeof(chan->conf_req)) {
  l2cap_send_cmd(conn, cmd->ident, L2CAP_CONF_RSP,
          l2cap_build_conf_rsp(chan, rsp,
          L2CAP_CONF_REJECT, flags), rsp);
  goto unlock;
 }


 memcpy(chan->conf_req + chan->conf_len, req->data, len);
 chan->conf_len += len;

 if (flags & L2CAP_CONF_FLAG_CONTINUATION) {

  l2cap_send_cmd(conn, cmd->ident, L2CAP_CONF_RSP,
          l2cap_build_conf_rsp(chan, rsp,
          L2CAP_CONF_SUCCESS, flags), rsp);
  goto unlock;
 }


 len = l2cap_parse_conf_req(chan, rsp, sizeof(rsp));
 if (len < 0) {
  l2cap_send_disconn_req(chan, ECONNRESET);
  goto unlock;
 }

 chan->ident = cmd->ident;
 l2cap_send_cmd(conn, cmd->ident, L2CAP_CONF_RSP, len, rsp);
 chan->num_conf_rsp++;


 chan->conf_len = 0;

 if (!test_bit(CONF_OUTPUT_DONE, &chan->conf_state))
  goto unlock;

 if (test_bit(CONF_INPUT_DONE, &chan->conf_state)) {
  set_default_fcs(chan);

  if (chan->mode == L2CAP_MODE_ERTM ||
      chan->mode == L2CAP_MODE_STREAMING)
   err = l2cap_ertm_init(chan);

  if (err < 0)
   l2cap_send_disconn_req(chan, -err);
  else
   l2cap_chan_ready(chan);

  goto unlock;
 }

 if (!test_and_set_bit(CONF_REQ_SENT, &chan->conf_state)) {
  u8 buf[64];
  l2cap_send_cmd(conn, l2cap_get_ident(conn), L2CAP_CONF_REQ,
          l2cap_build_conf_req(chan, buf, sizeof(buf)), buf);
  chan->num_conf_req++;
 }



 if (test_bit(CONF_REM_CONF_PEND, &chan->conf_state) &&
     test_bit(CONF_LOC_CONF_PEND, &chan->conf_state)) {




  if (!chan->hs_hcon)
   l2cap_send_efs_conf_rsp(chan, rsp, cmd->ident, flags);
  else
   chan->ident = cmd->ident;
 }

unlock:
 l2cap_chan_unlock(chan);
 return err;
}
