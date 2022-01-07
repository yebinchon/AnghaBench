
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rhashtable_compare_arg {scalar_t__ key; } ;
struct TYPE_2__ {scalar_t__ tunnel_id; } ;
struct net_bridge_vlan {TYPE_1__ tinfo; } ;
typedef scalar_t__ __be64 ;



__attribute__((used)) static inline int br_vlan_tunid_cmp(struct rhashtable_compare_arg *arg,
        const void *ptr)
{
 const struct net_bridge_vlan *vle = ptr;
 __be64 tunid = *(__be64 *)arg->key;

 return vle->tinfo.tunnel_id != tunid;
}
