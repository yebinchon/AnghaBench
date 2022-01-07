
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mrp_port; } ;
struct mrp_port {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mrp_port* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct mrp_port*) ;

__attribute__((used)) static int mrp_init_port(struct net_device *dev)
{
 struct mrp_port *port;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;
 rcu_assign_pointer(dev->mrp_port, port);
 return 0;
}
