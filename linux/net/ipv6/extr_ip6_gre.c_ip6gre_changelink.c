
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ip6gre_net {int dummy; } ;
struct ip6_tnl {int net; } ;
struct __ip6_tnl_parm {int dummy; } ;


 size_t IFLA_MTU ;
 scalar_t__ IS_ERR (struct ip6_tnl*) ;
 int PTR_ERR (struct ip6_tnl*) ;
 struct ip6_tnl* ip6gre_changelink_common (struct net_device*,struct nlattr**,struct nlattr**,struct __ip6_tnl_parm*,struct netlink_ext_ack*) ;
 int ip6gre_net_id ;
 int ip6gre_tnl_change (struct ip6_tnl*,struct __ip6_tnl_parm*,int) ;
 int ip6gre_tunnel_link (struct ip6gre_net*,struct ip6_tnl*) ;
 int ip6gre_tunnel_link_md (struct ip6gre_net*,struct ip6_tnl*) ;
 int ip6gre_tunnel_unlink (struct ip6gre_net*,struct ip6_tnl*) ;
 int ip6gre_tunnel_unlink_md (struct ip6gre_net*,struct ip6_tnl*) ;
 struct ip6gre_net* net_generic (int ,int ) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ip6gre_changelink(struct net_device *dev, struct nlattr *tb[],
        struct nlattr *data[],
        struct netlink_ext_ack *extack)
{
 struct ip6_tnl *t = netdev_priv(dev);
 struct ip6gre_net *ign = net_generic(t->net, ip6gre_net_id);
 struct __ip6_tnl_parm p;

 t = ip6gre_changelink_common(dev, tb, data, &p, extack);
 if (IS_ERR(t))
  return PTR_ERR(t);

 ip6gre_tunnel_unlink_md(ign, t);
 ip6gre_tunnel_unlink(ign, t);
 ip6gre_tnl_change(t, &p, !tb[IFLA_MTU]);
 ip6gre_tunnel_link_md(ign, t);
 ip6gre_tunnel_link(ign, t);
 return 0;
}
