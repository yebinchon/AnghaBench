
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_conn_rsp {int status; int result; int dcid; int scid; } ;
struct l2cap_conn {int chan_lock; } ;
struct l2cap_cmd_hdr {int ident; } ;
struct l2cap_chan {int dcid; int conf_state; int num_conf_req; int ident; } ;
typedef int req ;


 int BT_CONFIG ;
 int BT_DBG (char*,int,int,int,int) ;
 int CONF_CONNECT_PEND ;
 int CONF_REQ_SENT ;
 int EBADSLT ;
 int ECONNREFUSED ;
 int EPROTO ;
 int L2CAP_CONF_REQ ;


 struct l2cap_chan* __l2cap_get_chan_by_ident (struct l2cap_conn*,int ) ;
 struct l2cap_chan* __l2cap_get_chan_by_scid (struct l2cap_conn*,int) ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 int l2cap_build_conf_req (struct l2cap_chan*,int *,int) ;
 int l2cap_chan_del (struct l2cap_chan*,int ) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int ,int *) ;
 int l2cap_state_change (struct l2cap_chan*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int l2cap_connect_create_rsp(struct l2cap_conn *conn,
        struct l2cap_cmd_hdr *cmd, u16 cmd_len,
        u8 *data)
{
 struct l2cap_conn_rsp *rsp = (struct l2cap_conn_rsp *) data;
 u16 scid, dcid, result, status;
 struct l2cap_chan *chan;
 u8 req[128];
 int err;

 if (cmd_len < sizeof(*rsp))
  return -EPROTO;

 scid = __le16_to_cpu(rsp->scid);
 dcid = __le16_to_cpu(rsp->dcid);
 result = __le16_to_cpu(rsp->result);
 status = __le16_to_cpu(rsp->status);

 BT_DBG("dcid 0x%4.4x scid 0x%4.4x result 0x%2.2x status 0x%2.2x",
        dcid, scid, result, status);

 mutex_lock(&conn->chan_lock);

 if (scid) {
  chan = __l2cap_get_chan_by_scid(conn, scid);
  if (!chan) {
   err = -EBADSLT;
   goto unlock;
  }
 } else {
  chan = __l2cap_get_chan_by_ident(conn, cmd->ident);
  if (!chan) {
   err = -EBADSLT;
   goto unlock;
  }
 }

 err = 0;

 l2cap_chan_lock(chan);

 switch (result) {
 case 128:
  l2cap_state_change(chan, BT_CONFIG);
  chan->ident = 0;
  chan->dcid = dcid;
  clear_bit(CONF_CONNECT_PEND, &chan->conf_state);

  if (test_and_set_bit(CONF_REQ_SENT, &chan->conf_state))
   break;

  l2cap_send_cmd(conn, l2cap_get_ident(conn), L2CAP_CONF_REQ,
          l2cap_build_conf_req(chan, req, sizeof(req)), req);
  chan->num_conf_req++;
  break;

 case 129:
  set_bit(CONF_CONNECT_PEND, &chan->conf_state);
  break;

 default:
  l2cap_chan_del(chan, ECONNREFUSED);
  break;
 }

 l2cap_chan_unlock(chan);

unlock:
 mutex_unlock(&conn->chan_lock);

 return err;
}
