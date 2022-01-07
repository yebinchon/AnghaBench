
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {scalar_t__ index; TYPE_1__* ops; } ;
struct dsa_notifier_vlan_info {scalar_t__ sw_index; int vlan; int port; } ;
struct TYPE_2__ {int (* port_vlan_del ) (struct dsa_switch*,int ,int ) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct dsa_switch*,int ,int ) ;

__attribute__((used)) static int dsa_switch_vlan_del(struct dsa_switch *ds,
          struct dsa_notifier_vlan_info *info)
{
 if (!ds->ops->port_vlan_del)
  return -EOPNOTSUPP;

 if (ds->index == info->sw_index)
  return ds->ops->port_vlan_del(ds, info->port, info->vlan);




 return 0;
}
