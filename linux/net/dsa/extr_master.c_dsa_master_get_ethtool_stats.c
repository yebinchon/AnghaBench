
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct net_device {struct dsa_port* dsa_ptr; } ;
struct ethtool_stats {int dummy; } ;
struct ethtool_ops {int (* get_sset_count ) (struct net_device*,int ) ;int (* get_ethtool_stats ) (struct net_device*,struct ethtool_stats*,int *) ;} ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; struct ethtool_ops* orig_ethtool_ops; } ;
struct TYPE_2__ {int (* get_ethtool_stats ) (struct dsa_switch*,int,int *) ;} ;


 int ETH_SS_STATS ;
 int stub1 (struct net_device*,int ) ;
 int stub2 (struct net_device*,struct ethtool_stats*,int *) ;
 int stub3 (struct dsa_switch*,int,int *) ;

__attribute__((used)) static void dsa_master_get_ethtool_stats(struct net_device *dev,
      struct ethtool_stats *stats,
      uint64_t *data)
{
 struct dsa_port *cpu_dp = dev->dsa_ptr;
 const struct ethtool_ops *ops = cpu_dp->orig_ethtool_ops;
 struct dsa_switch *ds = cpu_dp->ds;
 int port = cpu_dp->index;
 int count = 0;

 if (ops->get_sset_count && ops->get_ethtool_stats) {
  count = ops->get_sset_count(dev, ETH_SS_STATS);
  ops->get_ethtool_stats(dev, stats, data);
 }

 if (ds->ops->get_ethtool_stats)
  ds->ops->get_ethtool_stats(ds, port, data + count);
}
