
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int batadv_gw_reselect (struct batadv_priv*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void batadv_post_gw_reselect(struct net_device *net_dev)
{
 struct batadv_priv *bat_priv = netdev_priv(net_dev);

 batadv_gw_reselect(bat_priv);
}
