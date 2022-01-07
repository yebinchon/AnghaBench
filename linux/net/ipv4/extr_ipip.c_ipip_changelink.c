
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int flags; } ;
struct TYPE_2__ {scalar_t__ daddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; } ;
struct ip_tunnel_encap {int dummy; } ;
struct ip_tunnel {int fwmark; } ;
typedef int __u32 ;


 int EINVAL ;
 int IFF_POINTOPOINT ;
 int ip_tunnel_changelink (struct net_device*,struct nlattr**,struct ip_tunnel_parm*,int ) ;
 int ip_tunnel_encap_setup (struct ip_tunnel*,struct ip_tunnel_encap*) ;
 scalar_t__ ipip_netlink_encap_parms (struct nlattr**,struct ip_tunnel_encap*) ;
 int ipip_netlink_parms (struct nlattr**,struct ip_tunnel_parm*,int*,int *) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipip_changelink(struct net_device *dev, struct nlattr *tb[],
      struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 struct ip_tunnel *t = netdev_priv(dev);
 struct ip_tunnel_parm p;
 struct ip_tunnel_encap ipencap;
 bool collect_md;
 __u32 fwmark = t->fwmark;

 if (ipip_netlink_encap_parms(data, &ipencap)) {
  int err = ip_tunnel_encap_setup(t, &ipencap);

  if (err < 0)
   return err;
 }

 ipip_netlink_parms(data, &p, &collect_md, &fwmark);
 if (collect_md)
  return -EINVAL;

 if (((dev->flags & IFF_POINTOPOINT) && !p.iph.daddr) ||
     (!(dev->flags & IFF_POINTOPOINT) && p.iph.daddr))
  return -EINVAL;

 return ip_tunnel_changelink(dev, tb, &p, fwmark);
}
