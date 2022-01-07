
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct mpoa_client {TYPE_4__* eg_ops; int egress_lock; TYPE_3__* dev; } ;
struct TYPE_5__ {scalar_t__ holding_time; int cache_id; } ;
struct TYPE_6__ {TYPE_1__ eg_info; } ;
struct k_message {TYPE_2__ content; } ;
typedef int eg_cache_entry ;
struct TYPE_8__ {int (* put ) (int *) ;int (* remove_entry ) (int *,struct mpoa_client*) ;int (* update ) (int *,scalar_t__) ;int * (* add_entry ) (struct k_message*,struct mpoa_client*) ;int * (* get_by_cache_id ) (int ,struct mpoa_client*) ;} ;
struct TYPE_7__ {int name; } ;


 int dprintk (char*,int ,int *,scalar_t__) ;
 int * stub1 (int ,struct mpoa_client*) ;
 int * stub2 (struct k_message*,struct mpoa_client*) ;
 int stub3 (int *) ;
 int stub4 (int *,scalar_t__) ;
 int stub5 (int *,struct mpoa_client*) ;
 int stub6 (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void MPOA_cache_impos_rcvd(struct k_message *msg,
      struct mpoa_client *mpc)
{
 uint16_t holding_time;
 eg_cache_entry *entry = mpc->eg_ops->get_by_cache_id(msg->content.eg_info.cache_id, mpc);

 holding_time = msg->content.eg_info.holding_time;
 dprintk("(%s) entry = %p, holding_time = %u\n",
  mpc->dev->name, entry, holding_time);
 if (entry == ((void*)0) && holding_time) {
  entry = mpc->eg_ops->add_entry(msg, mpc);
  mpc->eg_ops->put(entry);
  return;
 }
 if (holding_time) {
  mpc->eg_ops->update(entry, holding_time);
  return;
 }

 write_lock_irq(&mpc->egress_lock);
 mpc->eg_ops->remove_entry(entry, mpc);
 write_unlock_irq(&mpc->egress_lock);

 mpc->eg_ops->put(entry);
}
