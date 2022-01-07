
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_notifier_fdb_info {int vid; int addr; int port; int sw_index; } ;
struct TYPE_2__ {int (* port_fdb_del ) (struct dsa_switch*,int,int ,int ) ;} ;


 int EOPNOTSUPP ;
 int dsa_towards_port (struct dsa_switch*,int ,int ) ;
 int stub1 (struct dsa_switch*,int,int ,int ) ;

__attribute__((used)) static int dsa_switch_fdb_del(struct dsa_switch *ds,
         struct dsa_notifier_fdb_info *info)
{
 int port = dsa_towards_port(ds, info->sw_index, info->port);

 if (!ds->ops->port_fdb_del)
  return -EOPNOTSUPP;

 return ds->ops->port_fdb_del(ds, port, info->addr, info->vid);
}
