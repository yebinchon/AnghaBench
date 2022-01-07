
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_net {struct net_device* fb_tunnel_dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;


 struct net* dev_net (struct net_device*) ;
 struct sit_net* net_generic (struct net*,int ) ;
 int sit_net_id ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

__attribute__((used)) static void ipip6_dellink(struct net_device *dev, struct list_head *head)
{
 struct net *net = dev_net(dev);
 struct sit_net *sitn = net_generic(net, sit_net_id);

 if (dev != sitn->fb_tunnel_dev)
  unregister_netdevice_queue(dev, head);
}
