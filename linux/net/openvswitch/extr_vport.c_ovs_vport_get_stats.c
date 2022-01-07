
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dev; } ;
struct rtnl_link_stats64 {int tx_packets; int tx_bytes; int rx_packets; int rx_bytes; int rx_dropped; int tx_dropped; int tx_errors; int rx_errors; } ;
struct ovs_vport_stats {int tx_packets; int tx_bytes; int rx_packets; int rx_bytes; int rx_dropped; int tx_dropped; int tx_errors; int rx_errors; } ;


 struct rtnl_link_stats64* dev_get_stats (int ,struct rtnl_link_stats64*) ;

void ovs_vport_get_stats(struct vport *vport, struct ovs_vport_stats *stats)
{
 const struct rtnl_link_stats64 *dev_stats;
 struct rtnl_link_stats64 temp;

 dev_stats = dev_get_stats(vport->dev, &temp);
 stats->rx_errors = dev_stats->rx_errors;
 stats->tx_errors = dev_stats->tx_errors;
 stats->tx_dropped = dev_stats->tx_dropped;
 stats->rx_dropped = dev_stats->rx_dropped;

 stats->rx_bytes = dev_stats->rx_bytes;
 stats->rx_packets = dev_stats->rx_packets;
 stats->tx_bytes = dev_stats->tx_bytes;
 stats->tx_packets = dev_stats->tx_packets;
}
