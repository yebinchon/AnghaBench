
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct mpoa_client {TYPE_4__* in_ops; TYPE_3__* dev; } ;
struct TYPE_13__ {int in_dst_ip; } ;
struct TYPE_14__ {TYPE_1__ in_info; } ;
struct k_message {TYPE_2__ content; } ;
struct TYPE_17__ {scalar_t__ entry_state; scalar_t__ shortcut; scalar_t__ refresh_time; void* reply_wait; void* time; TYPE_1__ ctrl_info; } ;
typedef TYPE_5__ in_cache_entry ;
typedef int __be32 ;
struct TYPE_16__ {int (* put ) (TYPE_5__*) ;TYPE_5__* (* get ) (int ,struct mpoa_client*) ;} ;
struct TYPE_15__ {int name; } ;


 scalar_t__ INGRESS_RESOLVED ;
 scalar_t__ INGRESS_RESOLVING ;
 int check_qos_and_open_shortcut (struct k_message*,struct mpoa_client*,TYPE_5__*) ;
 int ddprintk (char*,int ,TYPE_5__*) ;
 int ddprintk_cont (char*,scalar_t__) ;
 int dprintk (char*,int ,int *) ;
 void* ktime_get_seconds () ;
 int pr_info (char*,int ) ;
 TYPE_5__* stub1 (int ,struct mpoa_client*) ;
 int stub2 (TYPE_5__*) ;
 int stub3 (TYPE_5__*) ;
 int stub4 (TYPE_5__*) ;
 int stub5 (TYPE_5__*) ;

__attribute__((used)) static void MPOA_res_reply_rcvd(struct k_message *msg, struct mpoa_client *mpc)
{
 __be32 dst_ip = msg->content.in_info.in_dst_ip;
 in_cache_entry *entry = mpc->in_ops->get(dst_ip, mpc);

 dprintk("(%s) ip %pI4\n",
  mpc->dev->name, &dst_ip);
 ddprintk("(%s) entry = %p",
   mpc->dev->name, entry);
 if (entry == ((void*)0)) {
  pr_info("(%s) ARGH, received res. reply for an entry that doesn't exist.\n",
   mpc->dev->name);
  return;
 }
 ddprintk_cont(" entry_state = %d ", entry->entry_state);

 if (entry->entry_state == INGRESS_RESOLVED) {
  pr_info("(%s) RESOLVED entry!\n", mpc->dev->name);
  mpc->in_ops->put(entry);
  return;
 }

 entry->ctrl_info = msg->content.in_info;
 entry->time = ktime_get_seconds();

 entry->reply_wait = ktime_get_seconds();
 entry->refresh_time = 0;
 ddprintk_cont("entry->shortcut = %p\n", entry->shortcut);

 if (entry->entry_state == INGRESS_RESOLVING &&
     entry->shortcut != ((void*)0)) {
  entry->entry_state = INGRESS_RESOLVED;
  mpc->in_ops->put(entry);
  return;
 }

 if (entry->shortcut != ((void*)0)) {
  pr_info("(%s) entry->shortcut != NULL, impossible!\n",
   mpc->dev->name);
  mpc->in_ops->put(entry);
  return;
 }

 check_qos_and_open_shortcut(msg, mpc, entry);
 entry->entry_state = INGRESS_RESOLVED;
 mpc->in_ops->put(entry);

 return;

}
