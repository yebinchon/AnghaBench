
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int src_type; int nesting; int state; int * ops; } ;
typedef int bdaddr_t ;


 int * BDADDR_ANY ;
 int BDADDR_LE_PUBLIC ;
 int BT_DBG (char*,struct l2cap_chan*,int ) ;
 int BT_ERR (char*,int) ;
 int BT_LISTEN ;
 int L2CAP_NESTING_PARENT ;
 int L2CAP_PSM_IPSP ;
 int atomic_set (int *,int ) ;
 int bt_6lowpan_chan_ops ;
 struct l2cap_chan* chan_create () ;
 int cpu_to_le16 (int ) ;
 int enable_6lowpan ;
 int l2cap_add_psm (struct l2cap_chan*,int *,int ) ;
 int l2cap_chan_put (struct l2cap_chan*) ;

__attribute__((used)) static struct l2cap_chan *bt_6lowpan_listen(void)
{
 bdaddr_t *addr = BDADDR_ANY;
 struct l2cap_chan *chan;
 int err;

 if (!enable_6lowpan)
  return ((void*)0);

 chan = chan_create();
 if (!chan)
  return ((void*)0);

 chan->ops = &bt_6lowpan_chan_ops;
 chan->state = BT_LISTEN;
 chan->src_type = BDADDR_LE_PUBLIC;

 atomic_set(&chan->nesting, L2CAP_NESTING_PARENT);

 BT_DBG("chan %p src type %d", chan, chan->src_type);

 err = l2cap_add_psm(chan, addr, cpu_to_le16(L2CAP_PSM_IPSP));
 if (err) {
  l2cap_chan_put(chan);
  BT_ERR("psm cannot be added err %d", err);
  return ((void*)0);
 }

 return chan;
}
