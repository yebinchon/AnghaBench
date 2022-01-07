
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int __br_vlan_filter_toggle (struct net_bridge*,unsigned long) ;

int br_vlan_filter_toggle(struct net_bridge *br, unsigned long val)
{
 return __br_vlan_filter_toggle(br, val);
}
