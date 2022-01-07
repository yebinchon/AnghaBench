
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int * dev; } ;
struct TYPE_3__ {int id; TYPE_2__* up; } ;
struct caif_device_entry {int xoff; void (* xoff_skb_dtor ) (struct sk_buff*) ;TYPE_1__ layer; int flow_lock; struct sk_buff* xoff_skb; } ;
struct TYPE_4__ {int (* ctrlcmd ) (TYPE_2__*,int ,int ) ;} ;


 scalar_t__ WARN_ON (int) ;
 int _CAIF_CTRLCMD_PHYIF_FLOW_ON_IND ;
 struct caif_device_entry* caif_get (int *) ;
 int caifd_hold (struct caif_device_entry*) ;
 int caifd_put (struct caif_device_entry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void caif_flow_cb(struct sk_buff *skb)
{
 struct caif_device_entry *caifd;
 void (*dtor)(struct sk_buff *skb) = ((void*)0);
 bool send_xoff;

 WARN_ON(skb->dev == ((void*)0));

 rcu_read_lock();
 caifd = caif_get(skb->dev);

 WARN_ON(caifd == ((void*)0));
 if (!caifd) {
  rcu_read_unlock();
  return;
 }

 caifd_hold(caifd);
 rcu_read_unlock();

 spin_lock_bh(&caifd->flow_lock);
 send_xoff = caifd->xoff;
 caifd->xoff = 0;
 dtor = caifd->xoff_skb_dtor;

 if (WARN_ON(caifd->xoff_skb != skb))
  skb = ((void*)0);

 caifd->xoff_skb = ((void*)0);
 caifd->xoff_skb_dtor = ((void*)0);

 spin_unlock_bh(&caifd->flow_lock);

 if (dtor && skb)
  dtor(skb);

 if (send_xoff)
  caifd->layer.up->
   ctrlcmd(caifd->layer.up,
    _CAIF_CTRLCMD_PHYIF_FLOW_ON_IND,
    caifd->layer.id);
 caifd_put(caifd);
}
