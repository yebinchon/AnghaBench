
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip6_tnl_net {int dummy; } ;
struct ip6_tnl {int dev; struct net* net; } ;
struct __ip6_tnl_parm {int dummy; } ;


 int ip6_tnl_change (struct ip6_tnl*,struct __ip6_tnl_parm*) ;
 int ip6_tnl_link (struct ip6_tnl_net*,struct ip6_tnl*) ;
 int ip6_tnl_net_id ;
 int ip6_tnl_unlink (struct ip6_tnl_net*,struct ip6_tnl*) ;
 struct ip6_tnl_net* net_generic (struct net*,int ) ;
 int netdev_state_change (int ) ;
 int synchronize_net () ;

__attribute__((used)) static int ip6_tnl_update(struct ip6_tnl *t, struct __ip6_tnl_parm *p)
{
 struct net *net = t->net;
 struct ip6_tnl_net *ip6n = net_generic(net, ip6_tnl_net_id);
 int err;

 ip6_tnl_unlink(ip6n, t);
 synchronize_net();
 err = ip6_tnl_change(t, p);
 ip6_tnl_link(ip6n, t);
 netdev_state_change(t->dev);
 return err;
}
