
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* port_egress_floods ) (struct dsa_switch*,int,int,int) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct dsa_switch*,int,int,int) ;
 scalar_t__ switchdev_trans_ph_prepare (struct switchdev_trans*) ;

int dsa_port_mrouter(struct dsa_port *dp, bool mrouter,
       struct switchdev_trans *trans)
{
 struct dsa_switch *ds = dp->ds;
 int port = dp->index;

 if (switchdev_trans_ph_prepare(trans))
  return ds->ops->port_egress_floods ? 0 : -EOPNOTSUPP;

 return ds->ops->port_egress_floods(ds, port, 1, mrouter);
}
