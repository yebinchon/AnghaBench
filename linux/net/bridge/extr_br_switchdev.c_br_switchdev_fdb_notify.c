
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {int vlan_id; TYPE_1__ addr; } ;
struct net_bridge_fdb_entry {int offloaded; int added_by_user; TYPE_3__* dst; TYPE_2__ key; } ;
struct TYPE_6__ {int dev; } ;




 int br_switchdev_fdb_call_notifiers (int,int ,int ,int ,int ,int ) ;

void
br_switchdev_fdb_notify(const struct net_bridge_fdb_entry *fdb, int type)
{
 if (!fdb->dst)
  return;

 switch (type) {
 case 129:
  br_switchdev_fdb_call_notifiers(0, fdb->key.addr.addr,
      fdb->key.vlan_id,
      fdb->dst->dev,
      fdb->added_by_user,
      fdb->offloaded);
  break;
 case 128:
  br_switchdev_fdb_call_notifiers(1, fdb->key.addr.addr,
      fdb->key.vlan_id,
      fdb->dst->dev,
      fdb->added_by_user,
      fdb->offloaded);
  break;
 }
}
