
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {void* rx_bytes; void* rx_packets; void* tx_dropped; void* tx_bytes; void* tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_CNT_RX ;
 int BATADV_CNT_RX_BYTES ;
 int BATADV_CNT_TX ;
 int BATADV_CNT_TX_BYTES ;
 int BATADV_CNT_TX_DROPPED ;
 void* batadv_sum_counter (struct batadv_priv*,int ) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *batadv_interface_stats(struct net_device *dev)
{
 struct batadv_priv *bat_priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;

 stats->tx_packets = batadv_sum_counter(bat_priv, BATADV_CNT_TX);
 stats->tx_bytes = batadv_sum_counter(bat_priv, BATADV_CNT_TX_BYTES);
 stats->tx_dropped = batadv_sum_counter(bat_priv, BATADV_CNT_TX_DROPPED);
 stats->rx_packets = batadv_sum_counter(bat_priv, BATADV_CNT_RX);
 stats->rx_bytes = batadv_sum_counter(bat_priv, BATADV_CNT_RX_BYTES);
 return stats;
}
