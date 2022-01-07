
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport_parms {int name; } ;
struct vport {int dummy; } ;


 scalar_t__ IS_ERR (struct vport*) ;
 struct vport* ovs_netdev_link (struct vport*,int ) ;
 struct vport* vxlan_tnl_create (struct vport_parms const*) ;

__attribute__((used)) static struct vport *vxlan_create(const struct vport_parms *parms)
{
 struct vport *vport;

 vport = vxlan_tnl_create(parms);
 if (IS_ERR(vport))
  return vport;

 return ovs_netdev_link(vport, parms->name);
}
