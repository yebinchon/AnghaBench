
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_bridge {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int br_vlan_add(struct net_bridge *br, u16 vid, u16 flags,
         bool *changed, struct netlink_ext_ack *extack)
{
 *changed = 0;
 return -EOPNOTSUPP;
}
