
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int batadv_dat_tvlv_container_update (struct batadv_priv*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

void batadv_dat_status_update(struct net_device *net_dev)
{
 struct batadv_priv *bat_priv = netdev_priv(net_dev);

 batadv_dat_tvlv_container_update(bat_priv);
}
