
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int conf_state; int kref; int state; int chan_timer; int global_l; int nesting; int lock; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int BT_OPEN ;
 int CONF_NOT_COMPLETE ;
 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int L2CAP_NESTING_NORMAL ;
 int atomic_set (int *,int ) ;
 int chan_list ;
 int chan_list_lock ;
 int kref_init (int *) ;
 struct l2cap_chan* kzalloc (int,int ) ;
 int l2cap_chan_timeout ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int set_bit (int ,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

struct l2cap_chan *l2cap_chan_create(void)
{
 struct l2cap_chan *chan;

 chan = kzalloc(sizeof(*chan), GFP_ATOMIC);
 if (!chan)
  return ((void*)0);

 mutex_init(&chan->lock);


 atomic_set(&chan->nesting, L2CAP_NESTING_NORMAL);

 write_lock(&chan_list_lock);
 list_add(&chan->global_l, &chan_list);
 write_unlock(&chan_list_lock);

 INIT_DELAYED_WORK(&chan->chan_timer, l2cap_chan_timeout);

 chan->state = BT_OPEN;

 kref_init(&chan->kref);


 set_bit(CONF_NOT_COMPLETE, &chan->conf_state);

 BT_DBG("chan %p", chan);

 return chan;
}
