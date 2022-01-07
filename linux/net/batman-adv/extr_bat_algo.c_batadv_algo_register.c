
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int is_similar_or_better; int cmp; } ;
struct TYPE_3__ {int primary_set; int update_mac; int disable; int enable; } ;
struct batadv_algo_ops {int list; int name; TYPE_2__ neigh; TYPE_1__ iface; } ;


 int EEXIST ;
 int EINVAL ;
 int INIT_HLIST_NODE (int *) ;
 struct batadv_algo_ops* batadv_algo_get (int ) ;
 int batadv_algo_list ;
 int hlist_add_head (int *,int *) ;
 int pr_info (char*,int ) ;

int batadv_algo_register(struct batadv_algo_ops *bat_algo_ops)
{
 struct batadv_algo_ops *bat_algo_ops_tmp;

 bat_algo_ops_tmp = batadv_algo_get(bat_algo_ops->name);
 if (bat_algo_ops_tmp) {
  pr_info("Trying to register already registered routing algorithm: %s\n",
   bat_algo_ops->name);
  return -EEXIST;
 }


 if (!bat_algo_ops->iface.enable ||
     !bat_algo_ops->iface.disable ||
     !bat_algo_ops->iface.update_mac ||
     !bat_algo_ops->iface.primary_set ||
     !bat_algo_ops->neigh.cmp ||
     !bat_algo_ops->neigh.is_similar_or_better) {
  pr_info("Routing algo '%s' does not implement required ops\n",
   bat_algo_ops->name);
  return -EINVAL;
 }

 INIT_HLIST_NODE(&bat_algo_ops->list);
 hlist_add_head(&bat_algo_ops->list, &batadv_algo_list);

 return 0;
}
