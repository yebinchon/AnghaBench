
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int ops; } ;


 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_chan*) ;
 struct l2cap_chan* chan_create () ;

__attribute__((used)) static inline struct l2cap_chan *chan_new_conn_cb(struct l2cap_chan *pchan)
{
 struct l2cap_chan *chan;

 chan = chan_create();
 if (!chan)
  return ((void*)0);

 chan->ops = pchan->ops;

 BT_DBG("chan %p pchan %p", chan, pchan);

 return chan;
}
