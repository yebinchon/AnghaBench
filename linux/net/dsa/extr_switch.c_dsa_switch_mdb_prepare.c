
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int num_ports; TYPE_1__* ops; } ;
struct dsa_notifier_mdb_info {int mdb; } ;
struct TYPE_2__ {int (* port_mdb_prepare ) (struct dsa_switch*,int,int ) ;int port_mdb_add; } ;


 int EOPNOTSUPP ;
 scalar_t__ dsa_switch_mdb_match (struct dsa_switch*,int,struct dsa_notifier_mdb_info*) ;
 int stub1 (struct dsa_switch*,int,int ) ;

__attribute__((used)) static int dsa_switch_mdb_prepare(struct dsa_switch *ds,
      struct dsa_notifier_mdb_info *info)
{
 int port, err;

 if (!ds->ops->port_mdb_prepare || !ds->ops->port_mdb_add)
  return -EOPNOTSUPP;

 for (port = 0; port < ds->num_ports; port++) {
  if (dsa_switch_mdb_match(ds, port, info)) {
   err = ds->ops->port_mdb_prepare(ds, port, info->mdb);
   if (err)
    return err;
  }
 }

 return 0;
}
