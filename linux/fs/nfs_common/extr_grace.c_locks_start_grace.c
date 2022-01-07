
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inum; } ;
struct net {TYPE_1__ ns; } ;
struct lock_manager {int list; } ;
struct list_head {int dummy; } ;


 int WARN (int,char*,int ,char*) ;
 int grace_lock ;
 int grace_net_id ;
 struct net init_net ;
 int list_add (int *,struct list_head*) ;
 scalar_t__ list_empty (int *) ;
 struct list_head* net_generic (struct net*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
locks_start_grace(struct net *net, struct lock_manager *lm)
{
 struct list_head *grace_list = net_generic(net, grace_net_id);

 spin_lock(&grace_lock);
 if (list_empty(&lm->list))
  list_add(&lm->list, grace_list);
 else
  WARN(1, "double list_add attempt detected in net %x %s\n",
       net->ns.inum, (net == &init_net) ? "(init_net)" : "");
 spin_unlock(&grace_lock);
}
