
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct teql_master {int tx_dropped; int tx_errors; int tx_bytes; int tx_packets; } ;
struct rtnl_link_stats64 {int tx_dropped; int tx_errors; int tx_bytes; int tx_packets; } ;
struct net_device {int dummy; } ;


 struct teql_master* netdev_priv (struct net_device*) ;

__attribute__((used)) static void teql_master_stats64(struct net_device *dev,
    struct rtnl_link_stats64 *stats)
{
 struct teql_master *m = netdev_priv(dev);

 stats->tx_packets = m->tx_packets;
 stats->tx_bytes = m->tx_bytes;
 stats->tx_errors = m->tx_errors;
 stats->tx_dropped = m->tx_dropped;
}
