
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int num_ports; TYPE_1__* ops; } ;
struct dsa_notifier_vlan_info {int vlan; } ;
struct TYPE_2__ {int (* port_vlan_prepare ) (struct dsa_switch*,int,int ) ;int port_vlan_add; } ;


 int EOPNOTSUPP ;
 int dsa_port_vlan_check (struct dsa_switch*,int,int ) ;
 scalar_t__ dsa_switch_vlan_match (struct dsa_switch*,int,struct dsa_notifier_vlan_info*) ;
 int stub1 (struct dsa_switch*,int,int ) ;

__attribute__((used)) static int dsa_switch_vlan_prepare(struct dsa_switch *ds,
       struct dsa_notifier_vlan_info *info)
{
 int port, err;

 if (!ds->ops->port_vlan_prepare || !ds->ops->port_vlan_add)
  return -EOPNOTSUPP;

 for (port = 0; port < ds->num_ports; port++) {
  if (dsa_switch_vlan_match(ds, port, info)) {
   err = dsa_port_vlan_check(ds, port, info->vlan);
   if (err)
    return err;

   err = ds->ops->port_vlan_prepare(ds, port, info->vlan);
   if (err)
    return err;
  }
 }

 return 0;
}
