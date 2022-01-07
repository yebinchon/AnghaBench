
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_btle_dev {int netdev; } ;
struct l2cap_chan {int conn; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 struct lowpan_btle_dev* lookup_dev (int ) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static void chan_resume_cb(struct l2cap_chan *chan)
{
 struct lowpan_btle_dev *dev;

 BT_DBG("chan %p resume", chan);

 dev = lookup_dev(chan->conn);
 if (!dev || !dev->netdev)
  return;

 netif_wake_queue(dev->netdev);
}
