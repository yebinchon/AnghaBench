
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_conn_rsp {void* status; void* result; void* dcid; void* scid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int ident; int scid; int dcid; int flags; struct l2cap_conn* conn; } ;
typedef int rsp ;


 int BT_DISCONN ;
 int FLAG_DEFER_SETUP ;
 int L2CAP_CONN_RSP ;
 int L2CAP_CR_BAD_PSM ;
 int L2CAP_CR_SEC_BLOCK ;
 int L2CAP_CS_NO_INFO ;
 void* cpu_to_le16 (int ) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_conn_rsp*) ;
 int l2cap_state_change (struct l2cap_chan*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_chan_connect_reject(struct l2cap_chan *chan)
{
 struct l2cap_conn *conn = chan->conn;
 struct l2cap_conn_rsp rsp;
 u16 result;

 if (test_bit(FLAG_DEFER_SETUP, &chan->flags))
  result = L2CAP_CR_SEC_BLOCK;
 else
  result = L2CAP_CR_BAD_PSM;

 l2cap_state_change(chan, BT_DISCONN);

 rsp.scid = cpu_to_le16(chan->dcid);
 rsp.dcid = cpu_to_le16(chan->scid);
 rsp.result = cpu_to_le16(result);
 rsp.status = cpu_to_le16(L2CAP_CS_NO_INFO);

 l2cap_send_cmd(conn, chan->ident, L2CAP_CONN_RSP, sizeof(rsp), &rsp);
}
