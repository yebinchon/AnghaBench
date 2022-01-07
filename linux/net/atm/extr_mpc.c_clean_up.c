
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpoa_client {int egress_lock; TYPE_3__* eg_cache; } ;
struct TYPE_5__ {int cache_id; } ;
struct TYPE_4__ {TYPE_2__ eg_info; } ;
struct k_message {int type; TYPE_1__ content; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_2__ ctrl_info; } ;
typedef TYPE_3__ eg_cache_entry ;


 int SND_EGRESS_PURGE ;
 int dprintk (char*,int ) ;
 int msg_to_mpoad (struct k_message*,struct mpoa_client*) ;
 int read_lock_irq (int *) ;
 int read_unlock_irq (int *) ;

__attribute__((used)) static void clean_up(struct k_message *msg, struct mpoa_client *mpc, int action)
{

 eg_cache_entry *entry;
 msg->type = SND_EGRESS_PURGE;



 read_lock_irq(&mpc->egress_lock);
 entry = mpc->eg_cache;
 while (entry != ((void*)0)) {
  msg->content.eg_info = entry->ctrl_info;
  dprintk("cache_id %u\n", entry->ctrl_info.cache_id);
  msg_to_mpoad(msg, mpc);
  entry = entry->next;
 }
 read_unlock_irq(&mpc->egress_lock);

 msg->type = action;
 msg_to_mpoad(msg, mpc);
}
