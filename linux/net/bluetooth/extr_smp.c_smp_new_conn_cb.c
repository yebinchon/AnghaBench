
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int nesting; int mode; int omtu; int imtu; int scid; int dcid; int * ops; int chan_type; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int L2CAP_NESTING_SMP ;
 int atomic_set (int *,int ) ;
 struct l2cap_chan* l2cap_chan_create () ;
 int smp_chan_ops ;

__attribute__((used)) static inline struct l2cap_chan *smp_new_conn_cb(struct l2cap_chan *pchan)
{
 struct l2cap_chan *chan;

 BT_DBG("pchan %p", pchan);

 chan = l2cap_chan_create();
 if (!chan)
  return ((void*)0);

 chan->chan_type = pchan->chan_type;
 chan->ops = &smp_chan_ops;
 chan->scid = pchan->scid;
 chan->dcid = chan->scid;
 chan->imtu = pchan->imtu;
 chan->omtu = pchan->omtu;
 chan->mode = pchan->mode;






 atomic_set(&chan->nesting, L2CAP_NESTING_SMP);

 BT_DBG("created chan %p", chan);

 return chan;
}
