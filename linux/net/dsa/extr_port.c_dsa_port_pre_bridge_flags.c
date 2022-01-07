
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {struct dsa_switch* ds; } ;
struct TYPE_2__ {int port_egress_floods; } ;


 unsigned long BR_FLOOD ;
 unsigned long BR_MCAST_FLOOD ;
 int EINVAL ;

int dsa_port_pre_bridge_flags(const struct dsa_port *dp, unsigned long flags,
         struct switchdev_trans *trans)
{
 struct dsa_switch *ds = dp->ds;

 if (!ds->ops->port_egress_floods ||
     (flags & ~(BR_FLOOD | BR_MCAST_FLOOD)))
  return -EINVAL;

 return 0;
}
