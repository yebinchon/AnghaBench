
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct cfpkt {int dummy; } ;
struct TYPE_3__ {TYPE_2__* up; } ;
struct caif_device_entry {TYPE_1__ layer; int netdev; } ;
struct TYPE_4__ {int (* receive ) (TYPE_2__*,struct cfpkt*) ;} ;


 int CAIF_DIR_IN ;
 int EILSEQ ;
 int NET_RX_DROP ;
 struct caif_device_entry* caif_get (struct net_device*) ;
 int caifd_hold (struct caif_device_entry*) ;
 int caifd_put (struct caif_device_entry*) ;
 int cfpkt_destroy (struct cfpkt*) ;
 struct cfpkt* cfpkt_fromnative (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_oper_up (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (TYPE_2__*,struct cfpkt*) ;

__attribute__((used)) static int receive(struct sk_buff *skb, struct net_device *dev,
     struct packet_type *pkttype, struct net_device *orig_dev)
{
 struct cfpkt *pkt;
 struct caif_device_entry *caifd;
 int err;

 pkt = cfpkt_fromnative(CAIF_DIR_IN, skb);

 rcu_read_lock();
 caifd = caif_get(dev);

 if (!caifd || !caifd->layer.up || !caifd->layer.up->receive ||
   !netif_oper_up(caifd->netdev)) {
  rcu_read_unlock();
  kfree_skb(skb);
  return NET_RX_DROP;
 }


 caifd_hold(caifd);
 rcu_read_unlock();

 err = caifd->layer.up->receive(caifd->layer.up, pkt);


 if (err == -EILSEQ)
  cfpkt_destroy(pkt);


 caifd_put(caifd);

 if (err != 0)
  err = NET_RX_DROP;
 return err;
}
