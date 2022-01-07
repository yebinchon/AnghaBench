
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_le_conn_req {void* credits; void* mps; void* mtu; void* scid; int psm; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int ident; int rx_credits; int mps; int imtu; int scid; int psm; int flags; struct l2cap_conn* conn; } ;
typedef int req ;


 int FLAG_LE_CONN_REQ_SENT ;
 int L2CAP_LE_CONN_REQ ;
 void* cpu_to_le16 (int ) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_le_flowctl_init (struct l2cap_chan*,int ) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_le_conn_req*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void l2cap_le_connect(struct l2cap_chan *chan)
{
 struct l2cap_conn *conn = chan->conn;
 struct l2cap_le_conn_req req;

 if (test_and_set_bit(FLAG_LE_CONN_REQ_SENT, &chan->flags))
  return;

 l2cap_le_flowctl_init(chan, 0);

 req.psm = chan->psm;
 req.scid = cpu_to_le16(chan->scid);
 req.mtu = cpu_to_le16(chan->imtu);
 req.mps = cpu_to_le16(chan->mps);
 req.credits = cpu_to_le16(chan->rx_credits);

 chan->ident = l2cap_get_ident(conn);

 l2cap_send_cmd(conn, chan->ident, L2CAP_LE_CONN_REQ,
         sizeof(req), &req);
}
