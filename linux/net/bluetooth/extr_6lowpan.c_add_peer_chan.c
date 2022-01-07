
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_peer {struct l2cap_chan* chan; int list; scalar_t__ lladdr; int peer_addr; } ;
struct lowpan_btle_dev {int notify_peers; } ;
struct l2cap_chan {int dst; } ;
struct in6_addr {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int baswap (void*,int *) ;
 int devices_lock ;
 int do_notify_peers ;
 struct lowpan_peer* kzalloc (int,int ) ;
 int lowpan_iphc_uncompress_eui48_lladdr (int *,scalar_t__) ;
 int memset (int *,int ,int) ;
 int msecs_to_jiffies (int) ;
 int peer_add (struct lowpan_btle_dev*,struct lowpan_peer*) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct l2cap_chan *add_peer_chan(struct l2cap_chan *chan,
     struct lowpan_btle_dev *dev,
     bool new_netdev)
{
 struct lowpan_peer *peer;

 peer = kzalloc(sizeof(*peer), GFP_ATOMIC);
 if (!peer)
  return ((void*)0);

 peer->chan = chan;
 memset(&peer->peer_addr, 0, sizeof(struct in6_addr));

 baswap((void *)peer->lladdr, &chan->dst);

 lowpan_iphc_uncompress_eui48_lladdr(&peer->peer_addr, peer->lladdr);

 spin_lock(&devices_lock);
 INIT_LIST_HEAD(&peer->list);
 peer_add(dev, peer);
 spin_unlock(&devices_lock);


 if (new_netdev)
  INIT_DELAYED_WORK(&dev->notify_peers, do_notify_peers);
 schedule_delayed_work(&dev->notify_peers, msecs_to_jiffies(100));

 return peer->chan;
}
