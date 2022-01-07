
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct ethtool_ops* ethtool_ops; struct dsa_port* dsa_ptr; } ;
struct ethtool_ops {int get_ethtool_phy_stats; int get_strings; int get_ethtool_stats; int get_sset_count; int get_regs; int get_regs_len; } ;
struct dsa_switch {int dev; } ;
struct dsa_port {struct ethtool_ops* orig_ethtool_ops; struct dsa_switch* ds; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ethtool_ops* devm_kzalloc (int ,int,int ) ;
 int dsa_master_get_ethtool_phy_stats ;
 int dsa_master_get_ethtool_stats ;
 int dsa_master_get_regs ;
 int dsa_master_get_regs_len ;
 int dsa_master_get_sset_count ;
 int dsa_master_get_strings ;
 int memcpy (struct ethtool_ops*,struct ethtool_ops*,int) ;

__attribute__((used)) static int dsa_master_ethtool_setup(struct net_device *dev)
{
 struct dsa_port *cpu_dp = dev->dsa_ptr;
 struct dsa_switch *ds = cpu_dp->ds;
 struct ethtool_ops *ops;

 ops = devm_kzalloc(ds->dev, sizeof(*ops), GFP_KERNEL);
 if (!ops)
  return -ENOMEM;

 cpu_dp->orig_ethtool_ops = dev->ethtool_ops;
 if (cpu_dp->orig_ethtool_ops)
  memcpy(ops, cpu_dp->orig_ethtool_ops, sizeof(*ops));

 ops->get_regs_len = dsa_master_get_regs_len;
 ops->get_regs = dsa_master_get_regs;
 ops->get_sset_count = dsa_master_get_sset_count;
 ops->get_ethtool_stats = dsa_master_get_ethtool_stats;
 ops->get_strings = dsa_master_get_strings;
 ops->get_ethtool_phy_stats = dsa_master_get_ethtool_phy_stats;

 dev->ethtool_ops = ops;

 return 0;
}
