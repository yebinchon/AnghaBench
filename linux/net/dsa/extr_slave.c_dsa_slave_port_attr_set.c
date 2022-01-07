
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct TYPE_2__ {int mrouter; int brport_flags; int ageing_time; int vlan_filtering; int stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; } ;
struct net_device {int dummy; } ;
struct dsa_port {int cpu_dp; } ;


 int EOPNOTSUPP ;






 int dsa_port_ageing_time (struct dsa_port*,int ,struct switchdev_trans*) ;
 int dsa_port_bridge_flags (struct dsa_port*,int ,struct switchdev_trans*) ;
 int dsa_port_mrouter (int ,int ,struct switchdev_trans*) ;
 int dsa_port_pre_bridge_flags (struct dsa_port*,int ,struct switchdev_trans*) ;
 int dsa_port_set_state (struct dsa_port*,int ,struct switchdev_trans*) ;
 int dsa_port_vlan_filtering (struct dsa_port*,int ,struct switchdev_trans*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;

__attribute__((used)) static int dsa_slave_port_attr_set(struct net_device *dev,
       const struct switchdev_attr *attr,
       struct switchdev_trans *trans)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 int ret;

 switch (attr->id) {
 case 128:
  ret = dsa_port_set_state(dp, attr->u.stp_state, trans);
  break;
 case 131:
  ret = dsa_port_vlan_filtering(dp, attr->u.vlan_filtering,
           trans);
  break;
 case 133:
  ret = dsa_port_ageing_time(dp, attr->u.ageing_time, trans);
  break;
 case 129:
  ret = dsa_port_pre_bridge_flags(dp, attr->u.brport_flags,
      trans);
  break;
 case 130:
  ret = dsa_port_bridge_flags(dp, attr->u.brport_flags, trans);
  break;
 case 132:
  ret = dsa_port_mrouter(dp->cpu_dp, attr->u.mrouter, trans);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
