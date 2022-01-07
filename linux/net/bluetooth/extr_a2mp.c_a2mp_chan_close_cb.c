
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int dummy; } ;


 int l2cap_chan_put (struct l2cap_chan*) ;

__attribute__((used)) static void a2mp_chan_close_cb(struct l2cap_chan *chan)
{
 l2cap_chan_put(chan);
}
