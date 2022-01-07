
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mpoa_client {int egress_lock; int mps_ctrl_addr; TYPE_3__* eg_cache; } ;
struct TYPE_7__ {int mps_ip; int cache_id; int eg_dst_ip; } ;
struct TYPE_6__ {TYPE_2__ eg_info; } ;
struct k_message {TYPE_1__ content; } ;
struct TYPE_8__ {int use; TYPE_2__ ctrl_info; int entry_state; int time; int MPS_ctrl_ATM_addr; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef TYPE_3__ eg_cache_entry ;


 int ATM_ESA_LEN ;
 int EGRESS_RESOLVED ;
 int GFP_KERNEL ;
 int dprintk (char*,...) ;
 int ktime_get_seconds () ;
 TYPE_3__* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int ntohl (int ) ;
 int pr_info (char*) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static eg_cache_entry *eg_cache_add_entry(struct k_message *msg,
       struct mpoa_client *client)
{
 eg_cache_entry *entry = kzalloc(sizeof(eg_cache_entry), GFP_KERNEL);

 if (entry == ((void*)0)) {
  pr_info("out of memory\n");
  return ((void*)0);
 }

 dprintk("adding an egress entry, ip = %pI4, this should be our IP\n",
  &msg->content.eg_info.eg_dst_ip);

 refcount_set(&entry->use, 1);
 dprintk("new_eg_cache_entry: about to lock\n");
 write_lock_irq(&client->egress_lock);
 entry->next = client->eg_cache;
 entry->prev = ((void*)0);
 if (client->eg_cache != ((void*)0))
  client->eg_cache->prev = entry;
 client->eg_cache = entry;

 memcpy(entry->MPS_ctrl_ATM_addr, client->mps_ctrl_addr, ATM_ESA_LEN);
 entry->ctrl_info = msg->content.eg_info;
 entry->time = ktime_get_seconds();
 entry->entry_state = EGRESS_RESOLVED;
 dprintk("new_eg_cache_entry cache_id %u\n",
  ntohl(entry->ctrl_info.cache_id));
 dprintk("mps_ip = %pI4\n", &entry->ctrl_info.mps_ip);
 refcount_inc(&entry->use);

 write_unlock_irq(&client->egress_lock);
 dprintk("new_eg_cache_entry: unlocked\n");

 return entry;
}
