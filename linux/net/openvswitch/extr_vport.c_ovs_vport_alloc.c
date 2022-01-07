
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport_parms {int upcall_portids; int port_no; int dp; } ;
struct vport_ops {int dummy; } ;
struct vport {int dp_hash_node; struct vport_ops const* ops; int port_no; int dp; } ;


 size_t ALIGN (size_t,int ) ;
 int EINVAL ;
 int ENOMEM ;
 struct vport* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int VPORT_ALIGN ;
 int kfree (struct vport*) ;
 struct vport* kzalloc (size_t,int ) ;
 scalar_t__ ovs_vport_set_upcall_portids (struct vport*,int ) ;

struct vport *ovs_vport_alloc(int priv_size, const struct vport_ops *ops,
     const struct vport_parms *parms)
{
 struct vport *vport;
 size_t alloc_size;

 alloc_size = sizeof(struct vport);
 if (priv_size) {
  alloc_size = ALIGN(alloc_size, VPORT_ALIGN);
  alloc_size += priv_size;
 }

 vport = kzalloc(alloc_size, GFP_KERNEL);
 if (!vport)
  return ERR_PTR(-ENOMEM);

 vport->dp = parms->dp;
 vport->port_no = parms->port_no;
 vport->ops = ops;
 INIT_HLIST_NODE(&vport->dp_hash_node);

 if (ovs_vport_set_upcall_portids(vport, parms->upcall_portids)) {
  kfree(vport);
  return ERR_PTR(-EINVAL);
 }

 return vport;
}
