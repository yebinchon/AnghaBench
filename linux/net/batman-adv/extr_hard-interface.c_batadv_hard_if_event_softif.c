
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_NO_FLAGS ;


 int NOTIFY_DONE ;
 int batadv_debugfs_rename_meshif (struct net_device*) ;
 int batadv_softif_create_vlan (struct batadv_priv*,int ) ;
 int batadv_sysfs_add_meshif (struct net_device*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int batadv_hard_if_event_softif(unsigned long event,
           struct net_device *net_dev)
{
 struct batadv_priv *bat_priv;

 switch (event) {
 case 128:
  batadv_sysfs_add_meshif(net_dev);
  bat_priv = netdev_priv(net_dev);
  batadv_softif_create_vlan(bat_priv, BATADV_NO_FLAGS);
  break;
 case 129:
  batadv_debugfs_rename_meshif(net_dev);
  break;
 }

 return NOTIFY_DONE;
}
