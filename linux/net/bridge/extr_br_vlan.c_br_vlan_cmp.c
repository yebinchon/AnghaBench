
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rhashtable_compare_arg {scalar_t__ key; } ;
struct net_bridge_vlan {scalar_t__ vid; } ;



__attribute__((used)) static inline int br_vlan_cmp(struct rhashtable_compare_arg *arg,
         const void *ptr)
{
 const struct net_bridge_vlan *vle = ptr;
 u16 vid = *(u16 *)arg->key;

 return vle->vid != vid;
}
