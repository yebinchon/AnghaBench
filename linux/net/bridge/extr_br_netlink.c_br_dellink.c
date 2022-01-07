
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct ifinfomsg {int dummy; } ;


 int EINVAL ;
 int IFF_EBRIDGE ;
 int IFLA_AF_SPEC ;
 int RTM_DELLINK ;
 int RTM_NEWLINK ;
 int br_afspec (struct net_bridge*,struct net_bridge_port*,struct nlattr*,int ,int*,int *) ;
 int br_ifinfo_notify (int ,struct net_bridge*,struct net_bridge_port*) ;
 struct net_bridge_port* br_port_get_rtnl (struct net_device*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr*,int,int ) ;

int br_dellink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags)
{
 struct net_bridge *br = (struct net_bridge *)netdev_priv(dev);
 struct net_bridge_port *p;
 struct nlattr *afspec;
 bool changed = 0;
 int err = 0;

 afspec = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
 if (!afspec)
  return 0;

 p = br_port_get_rtnl(dev);

 if (!p && !(dev->priv_flags & IFF_EBRIDGE))
  return -EINVAL;

 err = br_afspec(br, p, afspec, RTM_DELLINK, &changed, ((void*)0));
 if (changed)



  br_ifinfo_notify(RTM_NEWLINK, br, p);

 return err;
}
