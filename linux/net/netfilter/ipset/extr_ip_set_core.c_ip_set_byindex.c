
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct ip_set_net {scalar_t__ ip_set_max; } ;
struct ip_set {int name; } ;
typedef scalar_t__ ip_set_id_t ;
struct TYPE_2__ {int portid; } ;


 int EMSGSIZE ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IPSET_ATTR_INDEX ;
 int IPSET_ATTR_PROTOCOL ;
 int IPSET_ATTR_SETNAME ;
 int IPSET_CMD_GET_BYINDEX ;
 int IPSET_ERR_PROTOCOL ;
 scalar_t__ IPSET_INVALID_ID ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_DEFAULT_SIZE ;
 struct ip_set* ip_set (struct ip_set_net*,scalar_t__) ;
 scalar_t__ ip_set_get_h16 (struct nlattr const* const) ;
 struct ip_set_net* ip_set_pernet (struct net*) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int protocol (struct nlattr const* const*) ;
 scalar_t__ protocol_failed (struct nlattr const* const*) ;
 struct nlmsghdr* start_msg (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ip_set_byindex(struct net *net, struct sock *ctnl,
     struct sk_buff *skb, const struct nlmsghdr *nlh,
     const struct nlattr * const attr[],
     struct netlink_ext_ack *extack)
{
 struct ip_set_net *inst = ip_set_pernet(net);
 struct sk_buff *skb2;
 struct nlmsghdr *nlh2;
 ip_set_id_t id = IPSET_INVALID_ID;
 const struct ip_set *set;
 int ret = 0;

 if (unlikely(protocol_failed(attr) ||
       !attr[IPSET_ATTR_INDEX]))
  return -IPSET_ERR_PROTOCOL;

 id = ip_set_get_h16(attr[IPSET_ATTR_INDEX]);
 if (id >= inst->ip_set_max)
  return -ENOENT;
 set = ip_set(inst, id);
 if (set == ((void*)0))
  return -ENOENT;

 skb2 = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!skb2)
  return -ENOMEM;

 nlh2 = start_msg(skb2, NETLINK_CB(skb).portid, nlh->nlmsg_seq, 0,
    IPSET_CMD_GET_BYINDEX);
 if (!nlh2)
  goto nlmsg_failure;
 if (nla_put_u8(skb2, IPSET_ATTR_PROTOCOL, protocol(attr)) ||
     nla_put_string(skb2, IPSET_ATTR_SETNAME, set->name))
  goto nla_put_failure;
 nlmsg_end(skb2, nlh2);

 ret = netlink_unicast(ctnl, skb2, NETLINK_CB(skb).portid, MSG_DONTWAIT);
 if (ret < 0)
  return ret;

 return 0;

nla_put_failure:
 nlmsg_cancel(skb2, nlh2);
nlmsg_failure:
 kfree_skb(skb2);
 return -EMSGSIZE;
}
