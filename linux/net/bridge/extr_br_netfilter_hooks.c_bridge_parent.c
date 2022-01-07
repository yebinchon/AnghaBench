
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* br; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 struct net_bridge_port* br_port_get_rcu (struct net_device const*) ;

__attribute__((used)) static inline struct net_device *bridge_parent(const struct net_device *dev)
{
 struct net_bridge_port *port;

 port = br_port_get_rcu(dev);
 return port ? port->br->dev : ((void*)0);
}
