
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct list_head {int dummy; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {int ip_tnl_net_id; int net; } ;


 int ip_tunnel_del (struct ip_tunnel_net*,struct ip_tunnel*) ;
 struct ip_tunnel_net* net_generic (int ,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

void ip_tunnel_dellink(struct net_device *dev, struct list_head *head)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct ip_tunnel_net *itn;

 itn = net_generic(tunnel->net, tunnel->ip_tnl_net_id);

 if (itn->fb_tunnel_dev != dev) {
  ip_tunnel_del(itn, netdev_priv(dev));
  unregister_netdevice_queue(dev, head);
 }
}
