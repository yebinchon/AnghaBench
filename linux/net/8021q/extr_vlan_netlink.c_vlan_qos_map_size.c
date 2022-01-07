
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ifla_vlan_qos_mapping {int dummy; } ;


 unsigned int nla_total_size (int) ;

__attribute__((used)) static inline size_t vlan_qos_map_size(unsigned int n)
{
 if (n == 0)
  return 0;

 return nla_total_size(sizeof(struct nlattr)) +
        nla_total_size(sizeof(struct ifla_vlan_qos_mapping)) * n;
}
