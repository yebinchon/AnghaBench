
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;
struct ip6gre_net {struct net_device* fb_tunnel_dev; } ;


 struct net* dev_net (struct net_device*) ;
 int ip6gre_net_id ;
 struct ip6gre_net* net_generic (struct net*,int ) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

__attribute__((used)) static void ip6gre_dellink(struct net_device *dev, struct list_head *head)
{
 struct net *net = dev_net(dev);
 struct ip6gre_net *ign = net_generic(net, ip6gre_net_id);

 if (dev != ign->fb_tunnel_dev)
  unregister_netdevice_queue(dev, head);
}
