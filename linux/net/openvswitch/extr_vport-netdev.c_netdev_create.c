
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport_parms {int name; } ;
struct vport {int dummy; } ;


 scalar_t__ IS_ERR (struct vport*) ;
 struct vport* ovs_netdev_link (struct vport*,int ) ;
 int ovs_netdev_vport_ops ;
 struct vport* ovs_vport_alloc (int ,int *,struct vport_parms const*) ;

__attribute__((used)) static struct vport *netdev_create(const struct vport_parms *parms)
{
 struct vport *vport;

 vport = ovs_vport_alloc(0, &ovs_netdev_vport_ops, parms);
 if (IS_ERR(vport))
  return vport;

 return ovs_netdev_link(vport, parms->name);
}
