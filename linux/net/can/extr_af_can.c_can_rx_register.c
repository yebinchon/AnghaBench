
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct receiver {void (* func ) (struct sk_buff*,void*) ;char* ident; int list; struct sock* sk; void* data; scalar_t__ matches; void* mask; void* can_id; } ;
struct net_device {scalar_t__ type; } ;
struct TYPE_2__ {int rcvlists_lock; struct can_rcv_lists_stats* rcv_lists_stats; } ;
struct net {TYPE_1__ can; } ;
struct hlist_head {int dummy; } ;
struct can_rcv_lists_stats {int rcv_entries; int rcv_entries_max; } ;
struct can_dev_rcv_lists {int entries; } ;
typedef void* canid_t ;


 scalar_t__ ARPHRD_CAN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct can_dev_rcv_lists* can_dev_rcv_lists_find (struct net*,struct net_device*) ;
 struct hlist_head* can_rcv_list_find (void**,void**,struct can_dev_rcv_lists*) ;
 int dev_net (struct net_device*) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct receiver* kmem_cache_alloc (int ,int ) ;
 int max (int ,int ) ;
 int net_eq (struct net*,int ) ;
 int rcv_cache ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int can_rx_register(struct net *net, struct net_device *dev, canid_t can_id,
      canid_t mask, void (*func)(struct sk_buff *, void *),
      void *data, char *ident, struct sock *sk)
{
 struct receiver *rcv;
 struct hlist_head *rcv_list;
 struct can_dev_rcv_lists *dev_rcv_lists;
 struct can_rcv_lists_stats *rcv_lists_stats = net->can.rcv_lists_stats;
 int err = 0;



 if (dev && dev->type != ARPHRD_CAN)
  return -ENODEV;

 if (dev && !net_eq(net, dev_net(dev)))
  return -ENODEV;

 rcv = kmem_cache_alloc(rcv_cache, GFP_KERNEL);
 if (!rcv)
  return -ENOMEM;

 spin_lock_bh(&net->can.rcvlists_lock);

 dev_rcv_lists = can_dev_rcv_lists_find(net, dev);
 rcv_list = can_rcv_list_find(&can_id, &mask, dev_rcv_lists);

 rcv->can_id = can_id;
 rcv->mask = mask;
 rcv->matches = 0;
 rcv->func = func;
 rcv->data = data;
 rcv->ident = ident;
 rcv->sk = sk;

 hlist_add_head_rcu(&rcv->list, rcv_list);
 dev_rcv_lists->entries++;

 rcv_lists_stats->rcv_entries++;
 rcv_lists_stats->rcv_entries_max = max(rcv_lists_stats->rcv_entries_max,
            rcv_lists_stats->rcv_entries);
 spin_unlock_bh(&net->can.rcvlists_lock);

 return err;
}
