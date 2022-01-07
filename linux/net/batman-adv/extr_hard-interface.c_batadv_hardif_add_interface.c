
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int ogm_buff_mutex; } ;
struct batadv_hard_iface {int list; int refcount; struct net_device* net_dev; int num_bcasts; int wifi_flags; int neigh_list_lock; TYPE_1__ bat_iv; int neigh_list; int if_status; int * soft_iface; int hardif_obj; } ;


 int ASSERT_RTNL () ;
 int BATADV_IF_NOT_IN_USE ;
 int BATADV_NUM_BCASTS_DEFAULT ;
 int BATADV_NUM_BCASTS_WIRELESS ;
 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int batadv_check_known_mac_addr (struct net_device*) ;
 int batadv_debugfs_add_hardif (struct batadv_hard_iface*) ;
 int batadv_hardif_generation ;
 int batadv_hardif_list ;
 int batadv_is_valid_iface (struct net_device*) ;
 scalar_t__ batadv_is_wifi_hardif (struct batadv_hard_iface*) ;
 int batadv_sysfs_add_hardif (int *,struct net_device*) ;
 int batadv_v_hardif_init (struct batadv_hard_iface*) ;
 int batadv_wifi_flags_evaluate (struct net_device*) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int kfree (struct batadv_hard_iface*) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_hard_iface* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct batadv_hard_iface *
batadv_hardif_add_interface(struct net_device *net_dev)
{
 struct batadv_hard_iface *hard_iface;
 int ret;

 ASSERT_RTNL();

 if (!batadv_is_valid_iface(net_dev))
  goto out;

 dev_hold(net_dev);

 hard_iface = kzalloc(sizeof(*hard_iface), GFP_ATOMIC);
 if (!hard_iface)
  goto release_dev;

 ret = batadv_sysfs_add_hardif(&hard_iface->hardif_obj, net_dev);
 if (ret)
  goto free_if;

 hard_iface->net_dev = net_dev;
 hard_iface->soft_iface = ((void*)0);
 hard_iface->if_status = BATADV_IF_NOT_IN_USE;

 batadv_debugfs_add_hardif(hard_iface);

 INIT_LIST_HEAD(&hard_iface->list);
 INIT_HLIST_HEAD(&hard_iface->neigh_list);

 mutex_init(&hard_iface->bat_iv.ogm_buff_mutex);
 spin_lock_init(&hard_iface->neigh_list_lock);
 kref_init(&hard_iface->refcount);

 hard_iface->num_bcasts = BATADV_NUM_BCASTS_DEFAULT;
 hard_iface->wifi_flags = batadv_wifi_flags_evaluate(net_dev);
 if (batadv_is_wifi_hardif(hard_iface))
  hard_iface->num_bcasts = BATADV_NUM_BCASTS_WIRELESS;

 batadv_v_hardif_init(hard_iface);

 batadv_check_known_mac_addr(hard_iface->net_dev);
 kref_get(&hard_iface->refcount);
 list_add_tail_rcu(&hard_iface->list, &batadv_hardif_list);
 batadv_hardif_generation++;

 return hard_iface;

free_if:
 kfree(hard_iface);
release_dev:
 dev_put(net_dev);
out:
 return ((void*)0);
}
