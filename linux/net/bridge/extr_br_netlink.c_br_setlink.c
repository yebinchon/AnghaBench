
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int nla_type; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* br; } ;
struct net_bridge {int dummy; } ;
struct ifinfomsg {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 int IFLA_AF_SPEC ;
 int IFLA_BRPORT_MAX ;
 int IFLA_PROTINFO ;
 int NLA_F_NESTED ;
 int RTM_NEWLINK ;
 int RTM_SETLINK ;
 int br_afspec (struct net_bridge*,struct net_bridge_port*,struct nlattr*,int ,int*,struct netlink_ext_ack*) ;
 int br_ifinfo_notify (int ,struct net_bridge*,struct net_bridge_port*) ;
 struct net_bridge_port* br_port_get_rtnl (struct net_device*) ;
 int br_port_policy ;
 int br_set_port_state (struct net_bridge_port*,int ) ;
 int br_setport (struct net_bridge_port*,struct nlattr**) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr*,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
        struct netlink_ext_ack *extack)
{
 struct net_bridge *br = (struct net_bridge *)netdev_priv(dev);
 struct nlattr *tb[IFLA_BRPORT_MAX + 1];
 struct net_bridge_port *p;
 struct nlattr *protinfo;
 struct nlattr *afspec;
 bool changed = 0;
 int err = 0;

 protinfo = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_PROTINFO);
 afspec = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
 if (!protinfo && !afspec)
  return 0;

 p = br_port_get_rtnl(dev);



 if (!p && !afspec)
  return -EINVAL;

 if (p && protinfo) {
  if (protinfo->nla_type & NLA_F_NESTED) {
   err = nla_parse_nested_deprecated(tb, IFLA_BRPORT_MAX,
         protinfo,
         br_port_policy,
         ((void*)0));
   if (err)
    return err;

   spin_lock_bh(&p->br->lock);
   err = br_setport(p, tb);
   spin_unlock_bh(&p->br->lock);
  } else {

   if (nla_len(protinfo) < sizeof(u8))
    return -EINVAL;

   spin_lock_bh(&p->br->lock);
   err = br_set_port_state(p, nla_get_u8(protinfo));
   spin_unlock_bh(&p->br->lock);
  }
  if (err)
   goto out;
  changed = 1;
 }

 if (afspec)
  err = br_afspec(br, p, afspec, RTM_SETLINK, &changed, extack);

 if (changed)
  br_ifinfo_notify(RTM_NEWLINK, br, p);
out:
 return err;
}
