
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* get_regs_len ) (struct dsa_switch*,int ) ;} ;


 int EOPNOTSUPP ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int stub1 (struct dsa_switch*,int ) ;

__attribute__((used)) static int dsa_slave_get_regs_len(struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;

 if (ds->ops->get_regs_len)
  return ds->ops->get_regs_len(ds, dp->index);

 return -EOPNOTSUPP;
}
