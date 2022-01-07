
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ncsi_package {int lock; int channel_num; int channels; } ;
struct TYPE_4__ {int enabled; int timer; } ;
struct ncsi_channel {unsigned char id; int node; TYPE_3__* modes; TYPE_2__* caps; int link; int lock; TYPE_1__ monitor; int state; struct ncsi_package* package; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int index; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int NCSI_CAP_MAX ;
 int NCSI_CHANNEL_INACTIVE ;
 int NCSI_MODE_MAX ;
 int kfree (struct ncsi_channel*) ;
 struct ncsi_channel* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int ncsi_channel_monitor ;
 struct ncsi_channel* ncsi_find_channel (struct ncsi_package*,unsigned char) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

struct ncsi_channel *ncsi_add_channel(struct ncsi_package *np, unsigned char id)
{
 struct ncsi_channel *nc, *tmp;
 int index;
 unsigned long flags;

 nc = kzalloc(sizeof(*nc), GFP_ATOMIC);
 if (!nc)
  return ((void*)0);

 nc->id = id;
 nc->package = np;
 nc->state = NCSI_CHANNEL_INACTIVE;
 nc->monitor.enabled = 0;
 timer_setup(&nc->monitor.timer, ncsi_channel_monitor, 0);
 spin_lock_init(&nc->lock);
 INIT_LIST_HEAD(&nc->link);
 for (index = 0; index < NCSI_CAP_MAX; index++)
  nc->caps[index].index = index;
 for (index = 0; index < NCSI_MODE_MAX; index++)
  nc->modes[index].index = index;

 spin_lock_irqsave(&np->lock, flags);
 tmp = ncsi_find_channel(np, id);
 if (tmp) {
  spin_unlock_irqrestore(&np->lock, flags);
  kfree(nc);
  return tmp;
 }

 list_add_tail_rcu(&nc->node, &np->channels);
 np->channel_num++;
 spin_unlock_irqrestore(&np->lock, flags);

 return nc;
}
