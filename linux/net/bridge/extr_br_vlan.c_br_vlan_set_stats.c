
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int BROPT_VLAN_STATS_ENABLED ;
 int EINVAL ;
 int br_opt_toggle (struct net_bridge*,int ,int) ;

int br_vlan_set_stats(struct net_bridge *br, unsigned long val)
{
 switch (val) {
 case 0:
 case 1:
  br_opt_toggle(br, BROPT_VLAN_STATS_ENABLED, !!val);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
