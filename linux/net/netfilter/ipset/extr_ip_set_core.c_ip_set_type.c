
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IPSET_ATTR_FAMILY ;
 size_t IPSET_ATTR_PROTOCOL ;
 size_t IPSET_ATTR_REVISION ;
 size_t IPSET_ATTR_REVISION_MIN ;
 size_t IPSET_ATTR_TYPENAME ;
 int IPSET_CMD_TYPE ;
 int IPSET_ERR_PROTOCOL ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_DEFAULT_SIZE ;
 int find_set_type_minmax (char const*,int ,int *,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 char* nla_data (struct nlattr const* const) ;
 int nla_get_u8 (struct nlattr const* const) ;
 scalar_t__ nla_put_string (struct sk_buff*,size_t,char const*) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,size_t,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int pr_debug (char*,int ) ;
 int protocol (struct nlattr const* const*) ;
 scalar_t__ protocol_min_failed (struct nlattr const* const*) ;
 struct nlmsghdr* start_msg (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ip_set_type(struct net *net, struct sock *ctnl, struct sk_buff *skb,
         const struct nlmsghdr *nlh,
         const struct nlattr * const attr[],
         struct netlink_ext_ack *extack)
{
 struct sk_buff *skb2;
 struct nlmsghdr *nlh2;
 u8 family, min, max;
 const char *typename;
 int ret = 0;

 if (unlikely(protocol_min_failed(attr) ||
       !attr[IPSET_ATTR_TYPENAME] ||
       !attr[IPSET_ATTR_FAMILY]))
  return -IPSET_ERR_PROTOCOL;

 family = nla_get_u8(attr[IPSET_ATTR_FAMILY]);
 typename = nla_data(attr[IPSET_ATTR_TYPENAME]);
 ret = find_set_type_minmax(typename, family, &min, &max);
 if (ret)
  return ret;

 skb2 = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!skb2)
  return -ENOMEM;

 nlh2 = start_msg(skb2, NETLINK_CB(skb).portid, nlh->nlmsg_seq, 0,
    IPSET_CMD_TYPE);
 if (!nlh2)
  goto nlmsg_failure;
 if (nla_put_u8(skb2, IPSET_ATTR_PROTOCOL, protocol(attr)) ||
     nla_put_string(skb2, IPSET_ATTR_TYPENAME, typename) ||
     nla_put_u8(skb2, IPSET_ATTR_FAMILY, family) ||
     nla_put_u8(skb2, IPSET_ATTR_REVISION, max) ||
     nla_put_u8(skb2, IPSET_ATTR_REVISION_MIN, min))
  goto nla_put_failure;
 nlmsg_end(skb2, nlh2);

 pr_debug("Send TYPE, nlmsg_len: %u\n", nlh2->nlmsg_len);
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
