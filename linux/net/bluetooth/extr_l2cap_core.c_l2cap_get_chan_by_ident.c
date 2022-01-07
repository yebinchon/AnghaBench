
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_conn {int chan_lock; } ;
struct l2cap_chan {int dummy; } ;


 struct l2cap_chan* __l2cap_get_chan_by_ident (struct l2cap_conn*,int ) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct l2cap_chan *l2cap_get_chan_by_ident(struct l2cap_conn *conn,
        u8 ident)
{
 struct l2cap_chan *c;

 mutex_lock(&conn->chan_lock);
 c = __l2cap_get_chan_by_ident(conn, ident);
 if (c)
  l2cap_chan_lock(c);
 mutex_unlock(&conn->chan_lock);

 return c;
}
