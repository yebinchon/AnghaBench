
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_l4proto {int l4proto; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_18__ {int portid; } ;
struct TYPE_17__ {unsigned int* dccp_timeout; } ;
struct TYPE_16__ {unsigned int timeout; } ;
struct TYPE_15__ {unsigned int* timeouts; } ;
struct TYPE_14__ {unsigned int timeout; } ;
struct TYPE_13__ {unsigned int timeout; } ;
struct TYPE_12__ {unsigned int* timeouts; } ;
struct TYPE_11__ {unsigned int* timeouts; } ;
struct TYPE_10__ {unsigned int* timeouts; } ;


 size_t CTA_TIMEOUT_L3PROTO ;
 size_t CTA_TIMEOUT_L4PROTO ;
 int EAGAIN ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IPCTNL_MSG_TIMEOUT_DEFAULT_SET ;
 int MSG_DONTWAIT ;
 TYPE_9__ NETLINK_CB (struct sk_buff*) ;
 int NFNL_MSG_TYPE (int ) ;
 int NLMSG_DEFAULT_SIZE ;
 int WARN_ONCE (int,char*,int) ;
 int cttimeout_default_fill_info (struct net*,struct sk_buff*,int ,int ,int ,int ,int ,struct nf_conntrack_l4proto const*,unsigned int*) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 struct nf_conntrack_l4proto* nf_ct_l4proto_find (int) ;
 TYPE_8__* nf_dccp_pernet (struct net*) ;
 TYPE_7__* nf_generic_pernet (struct net*) ;
 TYPE_6__* nf_gre_pernet (struct net*) ;
 TYPE_5__* nf_icmp_pernet (struct net*) ;
 TYPE_4__* nf_icmpv6_pernet (struct net*) ;
 TYPE_3__* nf_sctp_pernet (struct net*) ;
 TYPE_2__* nf_tcp_pernet (struct net*) ;
 TYPE_1__* nf_udp_pernet (struct net*) ;
 int nla_get_be16 (struct nlattr const* const) ;
 int nla_get_u8 (struct nlattr const* const) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int cttimeout_default_get(struct net *net, struct sock *ctnl,
     struct sk_buff *skb,
     const struct nlmsghdr *nlh,
     const struct nlattr * const cda[],
     struct netlink_ext_ack *extack)
{
 const struct nf_conntrack_l4proto *l4proto;
 unsigned int *timeouts = ((void*)0);
 struct sk_buff *skb2;
 int ret, err;
 __u16 l3num;
 __u8 l4num;

 if (!cda[CTA_TIMEOUT_L3PROTO] || !cda[CTA_TIMEOUT_L4PROTO])
  return -EINVAL;

 l3num = ntohs(nla_get_be16(cda[CTA_TIMEOUT_L3PROTO]));
 l4num = nla_get_u8(cda[CTA_TIMEOUT_L4PROTO]);
 l4proto = nf_ct_l4proto_find(l4num);

 err = -EOPNOTSUPP;
 if (l4proto->l4proto != l4num)
  goto err;

 switch (l4proto->l4proto) {
 case 133:
  timeouts = &nf_icmp_pernet(net)->timeout;
  break;
 case 130:
  timeouts = nf_tcp_pernet(net)->timeouts;
  break;
 case 129:
 case 128:
  timeouts = nf_udp_pernet(net)->timeouts;
  break;
 case 135:



  break;
 case 132:
  timeouts = &nf_icmpv6_pernet(net)->timeout;
  break;
 case 131:



  break;
 case 134:



  break;
 case 255:
  timeouts = &nf_generic_pernet(net)->timeout;
  break;
 default:
  WARN_ONCE(1, "Missing timeouts for proto %d", l4proto->l4proto);
  break;
 }

 if (!timeouts)
  goto err;

 skb2 = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (skb2 == ((void*)0)) {
  err = -ENOMEM;
  goto err;
 }

 ret = cttimeout_default_fill_info(net, skb2, NETLINK_CB(skb).portid,
       nlh->nlmsg_seq,
       NFNL_MSG_TYPE(nlh->nlmsg_type),
       IPCTNL_MSG_TIMEOUT_DEFAULT_SET,
       l3num, l4proto, timeouts);
 if (ret <= 0) {
  kfree_skb(skb2);
  err = -ENOMEM;
  goto err;
 }
 ret = netlink_unicast(ctnl, skb2, NETLINK_CB(skb).portid, MSG_DONTWAIT);
 if (ret > 0)
  ret = 0;


 return ret == -EAGAIN ? -ENOBUFS : ret;
err:
 return err;
}
