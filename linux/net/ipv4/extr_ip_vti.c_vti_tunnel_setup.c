
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int type; int * netdev_ops; } ;


 int ARPHRD_TUNNEL ;
 int ip_tunnel_setup (struct net_device*,int ) ;
 int vti_net_id ;
 int vti_netdev_ops ;

__attribute__((used)) static void vti_tunnel_setup(struct net_device *dev)
{
 dev->netdev_ops = &vti_netdev_ops;
 dev->type = ARPHRD_TUNNEL;
 ip_tunnel_setup(dev, vti_net_id);
}
