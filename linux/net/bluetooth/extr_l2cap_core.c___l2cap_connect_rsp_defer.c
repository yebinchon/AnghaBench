
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn_rsp {void* status; void* result; void* dcid; void* scid; } ;
typedef struct l2cap_conn_rsp u8 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int num_conf_req; int conf_state; int ident; scalar_t__ hs_hcon; int scid; int dcid; struct l2cap_conn* conn; } ;
typedef int rsp ;
typedef int buf ;


 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_conn_rsp) ;
 int CONF_REQ_SENT ;
 struct l2cap_conn_rsp L2CAP_CONF_REQ ;
 struct l2cap_conn_rsp L2CAP_CONN_RSP ;
 struct l2cap_conn_rsp L2CAP_CREATE_CHAN_RSP ;
 int L2CAP_CR_SUCCESS ;
 int L2CAP_CS_NO_INFO ;
 void* cpu_to_le16 (int ) ;
 int l2cap_build_conf_req (struct l2cap_chan*,struct l2cap_conn_rsp*,int) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,struct l2cap_conn_rsp,int,struct l2cap_conn_rsp*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void __l2cap_connect_rsp_defer(struct l2cap_chan *chan)
{
 struct l2cap_conn_rsp rsp;
 struct l2cap_conn *conn = chan->conn;
 u8 buf[128];
 u8 rsp_code;

 rsp.scid = cpu_to_le16(chan->dcid);
 rsp.dcid = cpu_to_le16(chan->scid);
 rsp.result = cpu_to_le16(L2CAP_CR_SUCCESS);
 rsp.status = cpu_to_le16(L2CAP_CS_NO_INFO);

 if (chan->hs_hcon)
  rsp_code = L2CAP_CREATE_CHAN_RSP;
 else
  rsp_code = L2CAP_CONN_RSP;

 BT_DBG("chan %p rsp_code %u", chan, rsp_code);

 l2cap_send_cmd(conn, chan->ident, rsp_code, sizeof(rsp), &rsp);

 if (test_and_set_bit(CONF_REQ_SENT, &chan->conf_state))
  return;

 l2cap_send_cmd(conn, l2cap_get_ident(conn), L2CAP_CONF_REQ,
         l2cap_build_conf_req(chan, buf, sizeof(buf)), buf);
 chan->num_conf_req++;
}
