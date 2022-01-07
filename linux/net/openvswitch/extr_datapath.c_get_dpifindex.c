
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {TYPE_1__* dev; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 int OVSP_LOCAL ;
 struct vport* ovs_vport_rcu (struct datapath const*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int get_dpifindex(const struct datapath *dp)
{
 struct vport *local;
 int ifindex;

 rcu_read_lock();

 local = ovs_vport_rcu(dp, OVSP_LOCAL);
 if (local)
  ifindex = local->dev->ifindex;
 else
  ifindex = 0;

 rcu_read_unlock();

 return ifindex;
}
