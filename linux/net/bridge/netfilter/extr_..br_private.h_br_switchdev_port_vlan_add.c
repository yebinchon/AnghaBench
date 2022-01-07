
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int br_switchdev_port_vlan_add(struct net_device *dev,
          u16 vid, u16 flags,
          struct netlink_ext_ack *extack)
{
 return -EOPNOTSUPP;
}
