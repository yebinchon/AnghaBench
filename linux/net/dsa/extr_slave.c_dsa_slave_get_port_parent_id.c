
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_phys_item_id {int id_len; int id; } ;
struct net_device {int dummy; } ;
struct dsa_switch_tree {int index; } ;
struct dsa_switch {scalar_t__ devlink; struct dsa_switch_tree* dst; } ;
struct dsa_port {struct dsa_switch* ds; } ;


 int EOPNOTSUPP ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int dsa_slave_get_port_parent_id(struct net_device *dev,
     struct netdev_phys_item_id *ppid)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;
 struct dsa_switch_tree *dst = ds->dst;





 if (dp->ds->devlink)
  return -EOPNOTSUPP;

 ppid->id_len = sizeof(dst->index);
 memcpy(&ppid->id, &dst->index, ppid->id_len);

 return 0;
}
