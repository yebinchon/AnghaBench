
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vport_portids {int n_ids; scalar_t__* ids; int rn_ids; } ;
struct vport {int upcall_portids; } ;
struct sk_buff {int dummy; } ;


 struct vport_portids* rcu_dereference (int ) ;
 int reciprocal_divide (size_t,int ) ;
 size_t skb_get_hash (struct sk_buff*) ;

u32 ovs_vport_find_upcall_portid(const struct vport *vport, struct sk_buff *skb)
{
 struct vport_portids *ids;
 u32 ids_index;
 u32 hash;

 ids = rcu_dereference(vport->upcall_portids);

 if (ids->n_ids == 1 && ids->ids[0] == 0)
  return 0;

 hash = skb_get_hash(skb);
 ids_index = hash - ids->n_ids * reciprocal_divide(hash, ids->rn_ids);
 return ids->ids[ids_index];
}
