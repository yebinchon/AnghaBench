
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ts_info {int so_timestamping; int phc_index; } ;


 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int SOF_TIMESTAMPING_TX_SOFTWARE ;

int ethtool_op_get_ts_info(struct net_device *dev, struct ethtool_ts_info *info)
{
 info->so_timestamping =
  SOF_TIMESTAMPING_TX_SOFTWARE |
  SOF_TIMESTAMPING_RX_SOFTWARE |
  SOF_TIMESTAMPING_SOFTWARE;
 info->phc_index = -1;
 return 0;
}
