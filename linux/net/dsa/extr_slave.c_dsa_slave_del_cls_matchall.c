
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_cls_matchall_offload {int cookie; } ;
struct net_device {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct dsa_mall_tc_entry {int type; int mirror; int list; } ;
struct TYPE_2__ {int (* port_mirror_del ) (struct dsa_switch*,int ,int *) ;} ;



 int WARN_ON (int) ;
 struct dsa_mall_tc_entry* dsa_slave_mall_tc_entry_find (struct net_device*,int ) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int kfree (struct dsa_mall_tc_entry*) ;
 int list_del (int *) ;
 int stub1 (struct dsa_switch*,int ,int *) ;

__attribute__((used)) static void dsa_slave_del_cls_matchall(struct net_device *dev,
           struct tc_cls_matchall_offload *cls)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_mall_tc_entry *mall_tc_entry;
 struct dsa_switch *ds = dp->ds;

 if (!ds->ops->port_mirror_del)
  return;

 mall_tc_entry = dsa_slave_mall_tc_entry_find(dev, cls->cookie);
 if (!mall_tc_entry)
  return;

 list_del(&mall_tc_entry->list);

 switch (mall_tc_entry->type) {
 case 128:
  ds->ops->port_mirror_del(ds, dp->index, &mall_tc_entry->mirror);
  break;
 default:
  WARN_ON(1);
 }

 kfree(mall_tc_entry);
}
