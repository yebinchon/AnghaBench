
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport_parms {int name; } ;
struct vport {int dummy; } ;


 scalar_t__ IS_ERR (struct vport*) ;
 struct vport* geneve_tnl_create (struct vport_parms const*) ;
 struct vport* ovs_netdev_link (struct vport*,int ) ;

__attribute__((used)) static struct vport *geneve_create(const struct vport_parms *parms)
{
 struct vport *vport;

 vport = geneve_tnl_create(parms);
 if (IS_ERR(vport))
  return vport;

 return ovs_netdev_link(vport, parms->name);
}
