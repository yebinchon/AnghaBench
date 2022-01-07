
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int imtu; int mode; int chan_type; } ;


 int L2CAP_CHAN_CONN_ORIENTED ;
 int L2CAP_MODE_LE_FLOWCTL ;
 struct l2cap_chan* l2cap_chan_create () ;
 int l2cap_chan_set_defaults (struct l2cap_chan*) ;

__attribute__((used)) static struct l2cap_chan *chan_create(void)
{
 struct l2cap_chan *chan;

 chan = l2cap_chan_create();
 if (!chan)
  return ((void*)0);

 l2cap_chan_set_defaults(chan);

 chan->chan_type = L2CAP_CHAN_CONN_ORIENTED;
 chan->mode = L2CAP_MODE_LE_FLOWCTL;
 chan->imtu = 1280;

 return chan;
}
