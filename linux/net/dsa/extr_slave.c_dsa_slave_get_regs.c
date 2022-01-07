
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_regs {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* get_regs ) (struct dsa_switch*,int ,struct ethtool_regs*,void*) ;} ;


 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int stub1 (struct dsa_switch*,int ,struct ethtool_regs*,void*) ;

__attribute__((used)) static void
dsa_slave_get_regs(struct net_device *dev, struct ethtool_regs *regs, void *_p)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;

 if (ds->ops->get_regs)
  ds->ops->get_regs(ds, dp->index, regs, _p);
}
