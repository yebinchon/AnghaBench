
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_ops {scalar_t__ ndo_get_phys_port_name; } ;
struct net_device {struct net_device_ops* netdev_ops; struct dsa_port* dsa_ptr; } ;
struct dsa_switch {int dev; } ;
struct dsa_port {struct net_device_ops* orig_ndo_ops; struct dsa_switch* ds; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct net_device_ops* devm_kzalloc (int ,int,int ) ;
 scalar_t__ dsa_master_get_phys_port_name ;
 int memcpy (struct net_device_ops*,struct net_device_ops*,int) ;

__attribute__((used)) static int dsa_master_ndo_setup(struct net_device *dev)
{
 struct dsa_port *cpu_dp = dev->dsa_ptr;
 struct dsa_switch *ds = cpu_dp->ds;
 struct net_device_ops *ops;

 if (dev->netdev_ops->ndo_get_phys_port_name)
  return 0;

 ops = devm_kzalloc(ds->dev, sizeof(*ops), GFP_KERNEL);
 if (!ops)
  return -ENOMEM;

 cpu_dp->orig_ndo_ops = dev->netdev_ops;
 if (cpu_dp->orig_ndo_ops)
  memcpy(ops, cpu_dp->orig_ndo_ops, sizeof(*ops));

 ops->ndo_get_phys_port_name = dsa_master_get_phys_port_name;

 dev->netdev_ops = ops;

 return 0;
}
