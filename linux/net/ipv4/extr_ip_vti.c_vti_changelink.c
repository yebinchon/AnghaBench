
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel {int fwmark; } ;
typedef int __u32 ;


 int ip_tunnel_changelink (struct net_device*,struct nlattr**,struct ip_tunnel_parm*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int vti_netlink_parms (struct nlattr**,struct ip_tunnel_parm*,int *) ;

__attribute__((used)) static int vti_changelink(struct net_device *dev, struct nlattr *tb[],
     struct nlattr *data[],
     struct netlink_ext_ack *extack)
{
 struct ip_tunnel *t = netdev_priv(dev);
 __u32 fwmark = t->fwmark;
 struct ip_tunnel_parm p;

 vti_netlink_parms(data, &p, &fwmark);
 return ip_tunnel_changelink(dev, tb, &p, fwmark);
}
