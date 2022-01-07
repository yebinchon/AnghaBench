
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_le_conn_rsp {void* result; void* credits; void* mps; void* mtu; void* dcid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int ident; int rx_credits; int mps; int imtu; int scid; struct l2cap_conn* conn; } ;
typedef int rsp ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int L2CAP_CR_LE_SUCCESS ;
 int L2CAP_LE_CONN_RSP ;
 void* cpu_to_le16 (int ) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_le_conn_rsp*) ;

void __l2cap_le_connect_rsp_defer(struct l2cap_chan *chan)
{
 struct l2cap_le_conn_rsp rsp;
 struct l2cap_conn *conn = chan->conn;

 BT_DBG("chan %p", chan);

 rsp.dcid = cpu_to_le16(chan->scid);
 rsp.mtu = cpu_to_le16(chan->imtu);
 rsp.mps = cpu_to_le16(chan->mps);
 rsp.credits = cpu_to_le16(chan->rx_credits);
 rsp.result = cpu_to_le16(L2CAP_CR_LE_SUCCESS);

 l2cap_send_cmd(conn, chan->ident, L2CAP_LE_CONN_RSP, sizeof(rsp),
         &rsp);
}
