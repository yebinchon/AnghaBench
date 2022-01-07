
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_conf_rsp {int data; int result; int flags; int scid; } ;
struct l2cap_conf_req {int dummy; } ;
struct l2cap_cmd_hdr {int ident; } ;
struct l2cap_chan {scalar_t__ mode; int conf_state; int num_conf_req; int num_conf_rsp; int ident; int hs_hcon; } ;
typedef int req ;
typedef int buf ;


 int BT_DBG (char*,int,int,int,int) ;
 int CONF_INPUT_DONE ;
 int CONF_LOC_CONF_PEND ;
 int CONF_OUTPUT_DONE ;
 int CONF_REM_CONF_PEND ;
 int ECONNRESET ;
 int EPROTO ;
 int L2CAP_CONF_FLAG_CONTINUATION ;
 int L2CAP_CONF_MAX_CONF_RSP ;

 int L2CAP_CONF_REQ ;


 int L2CAP_DISC_REJ_TIMEOUT ;
 scalar_t__ L2CAP_MODE_ERTM ;
 scalar_t__ L2CAP_MODE_STREAMING ;
 int __le16_to_cpu (int ) ;
 int __set_chan_timer (struct l2cap_chan*,int ) ;
 int amp_create_logical_link (struct l2cap_chan*) ;
 int clear_bit (int ,int *) ;
 int l2cap_chan_ready (struct l2cap_chan*) ;
 int l2cap_chan_set_err (struct l2cap_chan*,int) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int l2cap_check_efs (struct l2cap_chan*) ;
 int l2cap_conf_rfc_get (struct l2cap_chan*,int ,int) ;
 int l2cap_ertm_init (struct l2cap_chan*) ;
 struct l2cap_chan* l2cap_get_chan_by_scid (struct l2cap_conn*,int) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_parse_conf_rsp (struct l2cap_chan*,int ,int,char*,int,int*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,char*) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int) ;
 int l2cap_send_efs_conf_rsp (struct l2cap_chan*,char*,int ,int ) ;
 int set_bit (int ,int *) ;
 int set_default_fcs (struct l2cap_chan*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int l2cap_config_rsp(struct l2cap_conn *conn,
       struct l2cap_cmd_hdr *cmd, u16 cmd_len,
       u8 *data)
{
 struct l2cap_conf_rsp *rsp = (struct l2cap_conf_rsp *)data;
 u16 scid, flags, result;
 struct l2cap_chan *chan;
 int len = cmd_len - sizeof(*rsp);
 int err = 0;

 if (cmd_len < sizeof(*rsp))
  return -EPROTO;

 scid = __le16_to_cpu(rsp->scid);
 flags = __le16_to_cpu(rsp->flags);
 result = __le16_to_cpu(rsp->result);

 BT_DBG("scid 0x%4.4x flags 0x%2.2x result 0x%2.2x len %d", scid, flags,
        result, len);

 chan = l2cap_get_chan_by_scid(conn, scid);
 if (!chan)
  return 0;

 switch (result) {
 case 129:
  l2cap_conf_rfc_get(chan, rsp->data, len);
  clear_bit(CONF_REM_CONF_PEND, &chan->conf_state);
  break;

 case 130:
  set_bit(CONF_REM_CONF_PEND, &chan->conf_state);

  if (test_bit(CONF_LOC_CONF_PEND, &chan->conf_state)) {
   char buf[64];

   len = l2cap_parse_conf_rsp(chan, rsp->data, len,
         buf, sizeof(buf), &result);
   if (len < 0) {
    l2cap_send_disconn_req(chan, ECONNRESET);
    goto done;
   }

   if (!chan->hs_hcon) {
    l2cap_send_efs_conf_rsp(chan, buf, cmd->ident,
       0);
   } else {
    if (l2cap_check_efs(chan)) {
     amp_create_logical_link(chan);
     chan->ident = cmd->ident;
    }
   }
  }
  goto done;

 case 128:
  if (chan->num_conf_rsp <= L2CAP_CONF_MAX_CONF_RSP) {
   char req[64];

   if (len > sizeof(req) - sizeof(struct l2cap_conf_req)) {
    l2cap_send_disconn_req(chan, ECONNRESET);
    goto done;
   }


   result = 129;
   len = l2cap_parse_conf_rsp(chan, rsp->data, len,
         req, sizeof(req), &result);
   if (len < 0) {
    l2cap_send_disconn_req(chan, ECONNRESET);
    goto done;
   }

   l2cap_send_cmd(conn, l2cap_get_ident(conn),
           L2CAP_CONF_REQ, len, req);
   chan->num_conf_req++;
   if (result != 129)
    goto done;
   break;
  }


 default:
  l2cap_chan_set_err(chan, ECONNRESET);

  __set_chan_timer(chan, L2CAP_DISC_REJ_TIMEOUT);
  l2cap_send_disconn_req(chan, ECONNRESET);
  goto done;
 }

 if (flags & L2CAP_CONF_FLAG_CONTINUATION)
  goto done;

 set_bit(CONF_INPUT_DONE, &chan->conf_state);

 if (test_bit(CONF_OUTPUT_DONE, &chan->conf_state)) {
  set_default_fcs(chan);

  if (chan->mode == L2CAP_MODE_ERTM ||
      chan->mode == L2CAP_MODE_STREAMING)
   err = l2cap_ertm_init(chan);

  if (err < 0)
   l2cap_send_disconn_req(chan, -err);
  else
   l2cap_chan_ready(chan);
 }

done:
 l2cap_chan_unlock(chan);
 return err;
}
