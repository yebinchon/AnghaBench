
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int kref; } ;


 int BT_DBG (char*,struct l2cap_chan*,int ) ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 int l2cap_chan_destroy ;

void l2cap_chan_put(struct l2cap_chan *c)
{
 BT_DBG("chan %p orig refcnt %d", c, kref_read(&c->kref));

 kref_put(&c->kref, l2cap_chan_destroy);
}
