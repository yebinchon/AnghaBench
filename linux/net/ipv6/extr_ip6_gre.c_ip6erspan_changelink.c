
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ip6gre_net {int dummy; } ;
struct ip6_tnl {int dummy; } ;
struct __ip6_tnl_parm {int dummy; } ;


 size_t IFLA_MTU ;
 scalar_t__ IS_ERR (struct ip6_tnl*) ;
 int PTR_ERR (struct ip6_tnl*) ;
 int dev_net (struct net_device*) ;
 int ip6erspan_set_version (struct nlattr**,struct __ip6_tnl_parm*) ;
 int ip6erspan_tnl_change (struct ip6_tnl*,struct __ip6_tnl_parm*,int) ;
 int ip6erspan_tunnel_link_md (struct ip6gre_net*,struct ip6_tnl*) ;
 struct ip6_tnl* ip6gre_changelink_common (struct net_device*,struct nlattr**,struct nlattr**,struct __ip6_tnl_parm*,struct netlink_ext_ack*) ;
 int ip6gre_net_id ;
 int ip6gre_tunnel_link (struct ip6gre_net*,struct ip6_tnl*) ;
 int ip6gre_tunnel_unlink (struct ip6gre_net*,struct ip6_tnl*) ;
 int ip6gre_tunnel_unlink_md (struct ip6gre_net*,struct ip6_tnl*) ;
 struct ip6gre_net* net_generic (int ,int ) ;

__attribute__((used)) static int ip6erspan_changelink(struct net_device *dev, struct nlattr *tb[],
    struct nlattr *data[],
    struct netlink_ext_ack *extack)
{
 struct ip6gre_net *ign = net_generic(dev_net(dev), ip6gre_net_id);
 struct __ip6_tnl_parm p;
 struct ip6_tnl *t;

 t = ip6gre_changelink_common(dev, tb, data, &p, extack);
 if (IS_ERR(t))
  return PTR_ERR(t);

 ip6erspan_set_version(data, &p);
 ip6gre_tunnel_unlink_md(ign, t);
 ip6gre_tunnel_unlink(ign, t);
 ip6erspan_tnl_change(t, &p, !tb[IFLA_MTU]);
 ip6erspan_tunnel_link_md(ign, t);
 ip6gre_tunnel_link(ign, t);
 return 0;
}
