
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {int seq; } ;
struct TYPE_5__ {TYPE_1__ ip6addrlbl_table; } ;
struct net {TYPE_2__ ipv6; } ;
struct ip6addrlbl_entry {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrlblmsg {scalar_t__ ifal_family; int ifal_prefixlen; scalar_t__ ifal_index; } ;
struct TYPE_6__ {int portid; } ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ESRCH ;
 int GFP_KERNEL ;
 size_t IFAL_ADDRESS ;
 int IFAL_MAX ;
 TYPE_3__ NETLINK_CB (struct sk_buff*) ;
 int RTM_NEWADDRLABEL ;
 int WARN_ON (int) ;
 struct ip6addrlbl_entry* __ipv6_addr_label (struct net*,struct in6_addr*,int ,scalar_t__) ;
 int addrlbl_ifindex_exists (struct net*,scalar_t__) ;
 int ip6addrlbl_fill (struct sk_buff*,struct ip6addrlbl_entry*,int ,int ,int ,int ,int ) ;
 int ip6addrlbl_msgsize () ;
 int ip6addrlbl_valid_get_req (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ;
 int ipv6_addr_type (struct in6_addr*) ;
 int kfree_skb (struct sk_buff*) ;
 struct in6_addr* nla_data (struct nlattr*) ;
 struct ifaddrlblmsg* nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int ip6addrlbl_get(struct sk_buff *in_skb, struct nlmsghdr *nlh,
     struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(in_skb->sk);
 struct ifaddrlblmsg *ifal;
 struct nlattr *tb[IFAL_MAX+1];
 struct in6_addr *addr;
 u32 lseq;
 int err = 0;
 struct ip6addrlbl_entry *p;
 struct sk_buff *skb;

 err = ip6addrlbl_valid_get_req(in_skb, nlh, tb, extack);
 if (err < 0)
  return err;

 ifal = nlmsg_data(nlh);

 if (ifal->ifal_family != AF_INET6 ||
     ifal->ifal_prefixlen != 128)
  return -EINVAL;

 if (ifal->ifal_index &&
     !addrlbl_ifindex_exists(net, ifal->ifal_index))
  return -EINVAL;

 if (!tb[IFAL_ADDRESS])
  return -EINVAL;
 addr = nla_data(tb[IFAL_ADDRESS]);

 skb = nlmsg_new(ip6addrlbl_msgsize(), GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 err = -ESRCH;

 rcu_read_lock();
 p = __ipv6_addr_label(net, addr, ipv6_addr_type(addr), ifal->ifal_index);
 lseq = net->ipv6.ip6addrlbl_table.seq;
 if (p)
  err = ip6addrlbl_fill(skb, p, lseq,
          NETLINK_CB(in_skb).portid,
          nlh->nlmsg_seq,
          RTM_NEWADDRLABEL, 0);
 rcu_read_unlock();

 if (err < 0) {
  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
 } else {
  err = rtnl_unicast(skb, net, NETLINK_CB(in_skb).portid);
 }
 return err;
}
