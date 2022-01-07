
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int garp_port; } ;
struct garp_port {int * applicants; } ;


 unsigned int GARP_APPLICATION_MAX ;
 int RCU_INIT_POINTER (int ,int *) ;
 int kfree_rcu (struct garp_port*,int ) ;
 int rcu ;
 struct garp_port* rtnl_dereference (int ) ;

__attribute__((used)) static void garp_release_port(struct net_device *dev)
{
 struct garp_port *port = rtnl_dereference(dev->garp_port);
 unsigned int i;

 for (i = 0; i <= GARP_APPLICATION_MAX; i++) {
  if (rtnl_dereference(port->applicants[i]))
   return;
 }
 RCU_INIT_POINTER(dev->garp_port, ((void*)0));
 kfree_rcu(port, rcu);
}
