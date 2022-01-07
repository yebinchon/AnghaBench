
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {int chan_lock; } ;
struct l2cap_chan {int dummy; } ;


 int __l2cap_chan_add (struct l2cap_conn*,struct l2cap_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void l2cap_chan_add(struct l2cap_conn *conn, struct l2cap_chan *chan)
{
 mutex_lock(&conn->chan_lock);
 __l2cap_chan_add(conn, chan);
 mutex_unlock(&conn->chan_lock);
}
