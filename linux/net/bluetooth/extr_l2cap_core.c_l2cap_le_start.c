
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {int hcon; } ;
struct l2cap_chan {scalar_t__ state; int psm; int sec_level; struct l2cap_conn* conn; } ;


 scalar_t__ BT_CONNECT ;
 int l2cap_chan_ready (struct l2cap_chan*) ;
 int l2cap_le_connect (struct l2cap_chan*) ;
 int smp_conn_security (int ,int ) ;

__attribute__((used)) static void l2cap_le_start(struct l2cap_chan *chan)
{
 struct l2cap_conn *conn = chan->conn;

 if (!smp_conn_security(conn->hcon, chan->sec_level))
  return;

 if (!chan->psm) {
  l2cap_chan_ready(chan);
  return;
 }

 if (chan->state == BT_CONNECT)
  l2cap_le_connect(chan);
}
