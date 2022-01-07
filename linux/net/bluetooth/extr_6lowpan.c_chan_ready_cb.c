
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_btle_dev {int netdev; } ;
struct l2cap_chan {int conn; } ;


 int BT_DBG (char*,struct l2cap_chan*,int ,struct lowpan_btle_dev*) ;
 int ENOENT ;
 int THIS_MODULE ;
 int add_peer_chan (struct l2cap_chan*,struct lowpan_btle_dev*,int) ;
 int ifup (int ) ;
 int l2cap_chan_del (struct l2cap_chan*,int ) ;
 struct lowpan_btle_dev* lookup_dev (int ) ;
 scalar_t__ setup_netdev (struct l2cap_chan*,struct lowpan_btle_dev**) ;
 int try_module_get (int ) ;

__attribute__((used)) static inline void chan_ready_cb(struct l2cap_chan *chan)
{
 struct lowpan_btle_dev *dev;
 bool new_netdev = 0;

 dev = lookup_dev(chan->conn);

 BT_DBG("chan %p conn %p dev %p", chan, chan->conn, dev);

 if (!dev) {
  if (setup_netdev(chan, &dev) < 0) {
   l2cap_chan_del(chan, -ENOENT);
   return;
  }
  new_netdev = 1;
 }

 if (!try_module_get(THIS_MODULE))
  return;

 add_peer_chan(chan, dev, new_netdev);
 ifup(dev->netdev);
}
