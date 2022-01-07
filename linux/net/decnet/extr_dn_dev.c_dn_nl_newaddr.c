
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int name; int dn_ptr; } ;
struct net {int dummy; } ;
struct ifaddrmsg {int ifa_scope; int ifa_flags; int ifa_index; } ;
struct dn_ifaddr {int ifa_label; struct dn_dev* ifa_dev; int ifa_scope; int ifa_flags; void* ifa_address; void* ifa_local; } ;
struct dn_dev {int dummy; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int EPERM ;
 size_t IFA_ADDRESS ;
 size_t IFA_FLAGS ;
 size_t IFA_LABEL ;
 size_t IFA_LOCAL ;
 int IFA_MAX ;
 int IFNAMSIZ ;
 struct net_device* __dev_get_by_index (int *,int ) ;
 struct dn_ifaddr* dn_dev_alloc_ifa () ;
 struct dn_dev* dn_dev_create (struct net_device*,int*) ;
 int dn_dev_free_ifa (struct dn_ifaddr*) ;
 int dn_dev_insert_ifa (struct dn_dev*,struct dn_ifaddr*) ;
 int dn_ifa_policy ;
 int init_net ;
 int memcpy (int ,int ,int ) ;
 int net_eq (struct net*,int *) ;
 int netlink_capable (struct sk_buff*,int ) ;
 void* nla_get_le16 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_strlcpy (int ,struct nlattr*,int ) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 struct dn_dev* rtnl_dereference (int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int dn_nl_newaddr(struct sk_buff *skb, struct nlmsghdr *nlh,
    struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tb[IFA_MAX+1];
 struct net_device *dev;
 struct dn_dev *dn_db;
 struct ifaddrmsg *ifm;
 struct dn_ifaddr *ifa;
 int err;

 if (!netlink_capable(skb, CAP_NET_ADMIN))
  return -EPERM;

 if (!net_eq(net, &init_net))
  return -EINVAL;

 err = nlmsg_parse_deprecated(nlh, sizeof(*ifm), tb, IFA_MAX,
         dn_ifa_policy, extack);
 if (err < 0)
  return err;

 if (tb[IFA_LOCAL] == ((void*)0))
  return -EINVAL;

 ifm = nlmsg_data(nlh);
 if ((dev = __dev_get_by_index(&init_net, ifm->ifa_index)) == ((void*)0))
  return -ENODEV;

 if ((dn_db = rtnl_dereference(dev->dn_ptr)) == ((void*)0)) {
  dn_db = dn_dev_create(dev, &err);
  if (!dn_db)
   return err;
 }

 if ((ifa = dn_dev_alloc_ifa()) == ((void*)0))
  return -ENOBUFS;

 if (tb[IFA_ADDRESS] == ((void*)0))
  tb[IFA_ADDRESS] = tb[IFA_LOCAL];

 ifa->ifa_local = nla_get_le16(tb[IFA_LOCAL]);
 ifa->ifa_address = nla_get_le16(tb[IFA_ADDRESS]);
 ifa->ifa_flags = tb[IFA_FLAGS] ? nla_get_u32(tb[IFA_FLAGS]) :
      ifm->ifa_flags;
 ifa->ifa_scope = ifm->ifa_scope;
 ifa->ifa_dev = dn_db;

 if (tb[IFA_LABEL])
  nla_strlcpy(ifa->ifa_label, tb[IFA_LABEL], IFNAMSIZ);
 else
  memcpy(ifa->ifa_label, dev->name, IFNAMSIZ);

 err = dn_dev_insert_ifa(dn_db, ifa);
 if (err)
  dn_dev_free_ifa(ifa);

 return err;
}
