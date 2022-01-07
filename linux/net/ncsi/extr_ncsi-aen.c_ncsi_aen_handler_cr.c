
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ncsi_dev_priv {int lock; int channel_queue; } ;
struct ncsi_channel {scalar_t__ state; int link; int lock; } ;
struct TYPE_2__ {int channel; } ;
struct ncsi_aen_pkt_hdr {TYPE_1__ common; } ;


 int ENODEV ;
 scalar_t__ NCSI_CHANNEL_ACTIVE ;
 scalar_t__ NCSI_CHANNEL_INACTIVE ;
 scalar_t__ NCSI_CHANNEL_INVISIBLE ;
 int list_add_tail_rcu (int *,int *) ;
 int list_empty (int *) ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 int ncsi_process_next_channel (struct ncsi_dev_priv*) ;
 int ncsi_stop_channel_monitor (struct ncsi_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ncsi_aen_handler_cr(struct ncsi_dev_priv *ndp,
          struct ncsi_aen_pkt_hdr *h)
{
 struct ncsi_channel *nc;
 unsigned long flags;


 ncsi_find_package_and_channel(ndp, h->common.channel, ((void*)0), &nc);
 if (!nc)
  return -ENODEV;

 spin_lock_irqsave(&nc->lock, flags);
 if (!list_empty(&nc->link) ||
     nc->state != NCSI_CHANNEL_ACTIVE) {
  spin_unlock_irqrestore(&nc->lock, flags);
  return 0;
 }
 spin_unlock_irqrestore(&nc->lock, flags);

 ncsi_stop_channel_monitor(nc);
 spin_lock_irqsave(&nc->lock, flags);
 nc->state = NCSI_CHANNEL_INVISIBLE;
 spin_unlock_irqrestore(&nc->lock, flags);

 spin_lock_irqsave(&ndp->lock, flags);
 nc->state = NCSI_CHANNEL_INACTIVE;
 list_add_tail_rcu(&nc->link, &ndp->channel_queue);
 spin_unlock_irqrestore(&ndp->lock, flags);

 return ncsi_process_next_channel(ndp);
}
