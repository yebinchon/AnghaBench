
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct datapath {int dummy; } ;


 int OVSP_LOCAL ;
 char const* ovs_vport_name (struct vport*) ;
 struct vport* ovs_vport_ovsl_rcu (struct datapath const*,int ) ;

const char *ovs_dp_name(const struct datapath *dp)
{
 struct vport *vport = ovs_vport_ovsl_rcu(dp, OVSP_LOCAL);
 return ovs_vport_name(vport);
}
