
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct mpoa_client {TYPE_4__* in_ops; TYPE_3__* dev; } ;
struct TYPE_12__ {int in_dst_ip; } ;
struct TYPE_11__ {TYPE_2__ in_info; } ;
struct k_message {TYPE_1__ content; void* type; } ;
struct TYPE_15__ {scalar_t__ entry_state; void* reply_wait; TYPE_2__ ctrl_info; } ;
typedef TYPE_5__ in_cache_entry ;
typedef int __be32 ;
struct TYPE_14__ {int (* put ) (TYPE_5__*) ;TYPE_5__* (* add_entry ) (int ,struct mpoa_client*) ;TYPE_5__* (* get ) (int ,struct mpoa_client*) ;} ;
struct TYPE_13__ {char* name; } ;


 scalar_t__ INGRESS_INVALID ;
 void* INGRESS_RESOLVING ;
 void* SND_MPOA_RES_RQST ;
 void* ktime_get_seconds () ;
 int msg_to_mpoad (struct k_message*,struct mpoa_client*) ;
 int pr_info (char*,char*) ;
 TYPE_5__* stub1 (int ,struct mpoa_client*) ;
 TYPE_5__* stub2 (int ,struct mpoa_client*) ;
 int stub3 (TYPE_5__*) ;
 int stub4 (TYPE_5__*) ;
 int stub5 (TYPE_5__*) ;

__attribute__((used)) static void MPOA_trigger_rcvd(struct k_message *msg, struct mpoa_client *mpc)
{
 __be32 dst_ip = msg->content.in_info.in_dst_ip;
 in_cache_entry *entry;

 entry = mpc->in_ops->get(dst_ip, mpc);
 if (entry == ((void*)0)) {
  entry = mpc->in_ops->add_entry(dst_ip, mpc);
  entry->entry_state = INGRESS_RESOLVING;
  msg->type = SND_MPOA_RES_RQST;
  msg->content.in_info = entry->ctrl_info;
  msg_to_mpoad(msg, mpc);
  entry->reply_wait = ktime_get_seconds();
  mpc->in_ops->put(entry);
  return;
 }

 if (entry->entry_state == INGRESS_INVALID) {
  entry->entry_state = INGRESS_RESOLVING;
  msg->type = SND_MPOA_RES_RQST;
  msg->content.in_info = entry->ctrl_info;
  msg_to_mpoad(msg, mpc);
  entry->reply_wait = ktime_get_seconds();
  mpc->in_ops->put(entry);
  return;
 }

 pr_info("(%s) entry already in resolving state\n",
  (mpc->dev) ? mpc->dev->name : "<unknown>");
 mpc->in_ops->put(entry);
}
