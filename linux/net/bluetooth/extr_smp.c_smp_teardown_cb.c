
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {int * smp; } ;
struct l2cap_chan {scalar_t__ data; struct l2cap_conn* conn; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int l2cap_chan_put (struct l2cap_chan*) ;
 int smp_chan_destroy (struct l2cap_conn*) ;

__attribute__((used)) static void smp_teardown_cb(struct l2cap_chan *chan, int err)
{
 struct l2cap_conn *conn = chan->conn;

 BT_DBG("chan %p", chan);

 if (chan->data)
  smp_chan_destroy(conn);

 conn->smp = ((void*)0);
 l2cap_chan_put(chan);
}
