
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct datapath {int dummy; } ;


 int OVSP_LOCAL ;
 struct vport* ovs_vport_ovsl (struct datapath const*,int ) ;

__attribute__((used)) static struct net_device *get_dpdev(const struct datapath *dp)
{
 struct vport *local;

 local = ovs_vport_ovsl(dp, OVSP_LOCAL);
 return local->dev;
}
