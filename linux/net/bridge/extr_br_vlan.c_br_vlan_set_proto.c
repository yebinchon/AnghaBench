
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int EPROTONOSUPPORT ;
 unsigned long ETH_P_8021AD ;
 unsigned long ETH_P_8021Q ;
 int __br_vlan_set_proto (struct net_bridge*,int ) ;
 int htons (unsigned long) ;

int br_vlan_set_proto(struct net_bridge *br, unsigned long val)
{
 if (val != ETH_P_8021Q && val != ETH_P_8021AD)
  return -EPROTONOSUPPORT;

 return __br_vlan_set_proto(br, htons(val));
}
