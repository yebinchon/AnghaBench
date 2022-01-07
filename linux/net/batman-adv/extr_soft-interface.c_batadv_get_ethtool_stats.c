
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_CNT_NUM ;
 int batadv_sum_counter (struct batadv_priv*,int) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void batadv_get_ethtool_stats(struct net_device *dev,
         struct ethtool_stats *stats, u64 *data)
{
 struct batadv_priv *bat_priv = netdev_priv(dev);
 int i;

 for (i = 0; i < BATADV_CNT_NUM; i++)
  data[i] = batadv_sum_counter(bat_priv, i);
}
