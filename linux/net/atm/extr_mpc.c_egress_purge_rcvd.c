
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mpoa_client {TYPE_4__* eg_ops; int egress_lock; TYPE_1__* dev; } ;
struct TYPE_6__ {int cache_id; } ;
struct TYPE_7__ {TYPE_2__ eg_info; } ;
struct k_message {TYPE_3__ content; } ;
typedef int eg_cache_entry ;
typedef int __be32 ;
struct TYPE_8__ {int (* put ) (int *) ;int (* remove_entry ) (int *,struct mpoa_client*) ;int * (* get_by_cache_id ) (int ,struct mpoa_client*) ;} ;
struct TYPE_5__ {int name; } ;


 int dprintk (char*,int ) ;
 int * stub1 (int ,struct mpoa_client*) ;
 int stub2 (int *,struct mpoa_client*) ;
 int stub3 (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void egress_purge_rcvd(struct k_message *msg, struct mpoa_client *mpc)
{
 __be32 cache_id = msg->content.eg_info.cache_id;
 eg_cache_entry *entry = mpc->eg_ops->get_by_cache_id(cache_id, mpc);

 if (entry == ((void*)0)) {
  dprintk("(%s) purge for a non-existing entry\n",
   mpc->dev->name);
  return;
 }

 write_lock_irq(&mpc->egress_lock);
 mpc->eg_ops->remove_entry(entry, mpc);
 write_unlock_irq(&mpc->egress_lock);

 mpc->eg_ops->put(entry);
}
