
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vport_portids {int n_ids; int ids; int rn_ids; } ;
struct vport {int upcall_portids; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree_rcu (struct vport_portids*,int ) ;
 struct vport_portids* kmalloc (int,int ) ;
 int nla_len (struct nlattr const*) ;
 int nla_memcpy (int ,struct nlattr const*,int) ;
 struct vport_portids* ovsl_dereference (int ) ;
 int rcu ;
 int rcu_assign_pointer (int ,struct vport_portids*) ;
 int reciprocal_value (int) ;

int ovs_vport_set_upcall_portids(struct vport *vport, const struct nlattr *ids)
{
 struct vport_portids *old, *vport_portids;

 if (!nla_len(ids) || nla_len(ids) % sizeof(u32))
  return -EINVAL;

 old = ovsl_dereference(vport->upcall_portids);

 vport_portids = kmalloc(sizeof(*vport_portids) + nla_len(ids),
    GFP_KERNEL);
 if (!vport_portids)
  return -ENOMEM;

 vport_portids->n_ids = nla_len(ids) / sizeof(u32);
 vport_portids->rn_ids = reciprocal_value(vport_portids->n_ids);
 nla_memcpy(vport_portids->ids, ids, nla_len(ids));

 rcu_assign_pointer(vport->upcall_portids, vport_portids);

 if (old)
  kfree_rcu(old, rcu);
 return 0;
}
