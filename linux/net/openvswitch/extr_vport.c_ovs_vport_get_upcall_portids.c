
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vport_portids {int n_ids; int * ids; } ;
struct vport {TYPE_1__* dp; int upcall_portids; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int user_features; } ;


 int OVS_DP_F_VPORT_PIDS ;
 int OVS_VPORT_ATTR_UPCALL_PID ;
 int nla_put (struct sk_buff*,int ,int,void*) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct vport_portids* rcu_dereference_ovsl (int ) ;

int ovs_vport_get_upcall_portids(const struct vport *vport,
     struct sk_buff *skb)
{
 struct vport_portids *ids;

 ids = rcu_dereference_ovsl(vport->upcall_portids);

 if (vport->dp->user_features & OVS_DP_F_VPORT_PIDS)
  return nla_put(skb, OVS_VPORT_ATTR_UPCALL_PID,
          ids->n_ids * sizeof(u32), (void *)ids->ids);
 else
  return nla_put_u32(skb, OVS_VPORT_ATTR_UPCALL_PID, ids->ids[0]);
}
