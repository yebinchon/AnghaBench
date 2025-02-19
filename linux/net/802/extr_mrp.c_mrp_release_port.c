
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mrp_port; } ;
struct mrp_port {int * applicants; } ;


 unsigned int MRP_APPLICATION_MAX ;
 int RCU_INIT_POINTER (int ,int *) ;
 int kfree_rcu (struct mrp_port*,int ) ;
 int rcu ;
 struct mrp_port* rtnl_dereference (int ) ;

__attribute__((used)) static void mrp_release_port(struct net_device *dev)
{
 struct mrp_port *port = rtnl_dereference(dev->mrp_port);
 unsigned int i;

 for (i = 0; i <= MRP_APPLICATION_MAX; i++) {
  if (rtnl_dereference(port->applicants[i]))
   return;
 }
 RCU_INIT_POINTER(dev->mrp_port, ((void*)0));
 kfree_rcu(port, rcu);
}
