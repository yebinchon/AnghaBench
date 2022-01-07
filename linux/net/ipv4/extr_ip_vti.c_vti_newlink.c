
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
typedef int __u32 ;


 int ip_tunnel_newlink (struct net_device*,struct nlattr**,struct ip_tunnel_parm*,int ) ;
 int vti_netlink_parms (struct nlattr**,struct ip_tunnel_parm*,int *) ;

__attribute__((used)) static int vti_newlink(struct net *src_net, struct net_device *dev,
         struct nlattr *tb[], struct nlattr *data[],
         struct netlink_ext_ack *extack)
{
 struct ip_tunnel_parm parms;
 __u32 fwmark = 0;

 vti_netlink_parms(data, &parms, &fwmark);
 return ip_tunnel_newlink(dev, tb, &parms, fwmark);
}
