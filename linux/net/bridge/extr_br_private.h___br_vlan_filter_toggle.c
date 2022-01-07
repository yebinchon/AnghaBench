
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int __br_vlan_filter_toggle(struct net_bridge *br,
       unsigned long val)
{
 return -EOPNOTSUPP;
}
