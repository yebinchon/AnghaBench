
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn_req {int psm; int scid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int ident; int conf_state; int psm; int scid; struct l2cap_conn* conn; } ;
typedef int req ;


 int CONF_CONNECT_PEND ;
 int L2CAP_CONN_REQ ;
 int cpu_to_le16 (int ) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_conn_req*) ;
 int set_bit (int ,int *) ;

void l2cap_send_conn_req(struct l2cap_chan *chan)
{
 struct l2cap_conn *conn = chan->conn;
 struct l2cap_conn_req req;

 req.scid = cpu_to_le16(chan->scid);
 req.psm = chan->psm;

 chan->ident = l2cap_get_ident(conn);

 set_bit(CONF_CONNECT_PEND, &chan->conf_state);

 l2cap_send_cmd(conn, chan->ident, L2CAP_CONN_REQ, sizeof(req), &req);
}
