
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mpoa_client {TYPE_4__* in_ops; int ingress_lock; TYPE_3__* dev; } ;
struct TYPE_5__ {int in_dst_ip; } ;
struct TYPE_6__ {TYPE_1__ in_info; } ;
struct k_message {int ip_mask; TYPE_2__ content; } ;
typedef int in_cache_entry ;
typedef int __be32 ;
struct TYPE_8__ {int * (* get_with_mask ) (int ,struct mpoa_client*,int ) ;int (* put ) (int *) ;int (* remove_entry ) (int *,struct mpoa_client*) ;} ;
struct TYPE_7__ {int name; } ;


 int dprintk (char*,int ,int *) ;
 int pr_info (char*,int ,int *) ;
 int * stub1 (int ,struct mpoa_client*,int ) ;
 int stub2 (int *,struct mpoa_client*) ;
 int stub3 (int *) ;
 int * stub4 (int ,struct mpoa_client*,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void ingress_purge_rcvd(struct k_message *msg, struct mpoa_client *mpc)
{
 __be32 dst_ip = msg->content.in_info.in_dst_ip;
 __be32 mask = msg->ip_mask;
 in_cache_entry *entry = mpc->in_ops->get_with_mask(dst_ip, mpc, mask);

 if (entry == ((void*)0)) {
  pr_info("(%s) purge for a non-existing entry, ip = %pI4\n",
   mpc->dev->name, &dst_ip);
  return;
 }

 do {
  dprintk("(%s) removing an ingress entry, ip = %pI4\n",
   mpc->dev->name, &dst_ip);
  write_lock_bh(&mpc->ingress_lock);
  mpc->in_ops->remove_entry(entry, mpc);
  write_unlock_bh(&mpc->ingress_lock);
  mpc->in_ops->put(entry);
  entry = mpc->in_ops->get_with_mask(dst_ip, mpc, mask);
 } while (entry != ((void*)0));
}
