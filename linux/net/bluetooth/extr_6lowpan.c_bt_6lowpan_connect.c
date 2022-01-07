
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_chan {int * ops; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,struct l2cap_chan*,int) ;
 int EINVAL ;
 int L2CAP_PSM_IPSP ;
 int bt_6lowpan_chan_ops ;
 struct l2cap_chan* chan_create () ;
 int cpu_to_le16 (int ) ;
 int l2cap_chan_connect (struct l2cap_chan*,int ,int ,int *,int ) ;
 int l2cap_chan_put (struct l2cap_chan*) ;

__attribute__((used)) static int bt_6lowpan_connect(bdaddr_t *addr, u8 dst_type)
{
 struct l2cap_chan *chan;
 int err;

 chan = chan_create();
 if (!chan)
  return -EINVAL;

 chan->ops = &bt_6lowpan_chan_ops;

 err = l2cap_chan_connect(chan, cpu_to_le16(L2CAP_PSM_IPSP), 0,
     addr, dst_type);

 BT_DBG("chan %p err %d", chan, err);
 if (err < 0)
  l2cap_chan_put(chan);

 return err;
}
