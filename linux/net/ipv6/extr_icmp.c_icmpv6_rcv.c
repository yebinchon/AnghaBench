
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {struct net_device* dev; } ;
struct sec_path {int len; TYPE_2__** xvec; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int icmpv6_echo_ignore_all; } ;
struct TYPE_9__ {TYPE_3__ sysctl; } ;
struct net {TYPE_4__ ipv6; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int icmp6_type; int icmp6_mtu; int icmp6_code; } ;
struct TYPE_10__ {struct in6_addr daddr; struct in6_addr saddr; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ props; } ;


 int ICMP6MSGIN_INC_STATS (struct net*,struct inet6_dev*,int) ;
 int ICMP6_MIB_CSUMERRORS ;
 int ICMP6_MIB_INERRORS ;
 int ICMP6_MIB_INMSGS ;





 int ICMPV6_INFOMSG_MASK ;
 int IPPROTO_ICMPV6 ;





 int XFRM_POLICY_IN ;
 int XFRM_STATE_ICMP ;
 int __ICMP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int consume_skb (struct sk_buff*) ;
 struct net* dev_net (struct net_device*) ;
 struct net_device* icmp6_dev (struct sk_buff*) ;
 struct icmp6hdr* icmp6_hdr (struct sk_buff*) ;
 int icmpv6_echo_reply (struct sk_buff*) ;
 int icmpv6_notify (struct sk_buff*,int,int ,int ) ;
 int igmp6_event_query (struct sk_buff*) ;
 int igmp6_event_report (struct sk_buff*) ;
 int ip6_compute_pseudo ;
 TYPE_5__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ndisc_rcv (struct sk_buff*) ;
 int net_dbg_ratelimited (char*,struct in6_addr const*,struct in6_addr const*) ;
 int ping_rcv (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int pskb_pull (struct sk_buff*,int) ;
 scalar_t__ skb_checksum_validate (struct sk_buff*,int ,int ) ;
 int skb_network_offset (struct sk_buff*) ;
 struct sec_path* skb_sec_path (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int) ;
 int xfrm6_policy_check (int *,int ,struct sk_buff*) ;
 int xfrm6_policy_check_reverse (int *,int ,struct sk_buff*) ;

__attribute__((used)) static int icmpv6_rcv(struct sk_buff *skb)
{
 struct net *net = dev_net(skb->dev);
 struct net_device *dev = icmp6_dev(skb);
 struct inet6_dev *idev = __in6_dev_get(dev);
 const struct in6_addr *saddr, *daddr;
 struct icmp6hdr *hdr;
 u8 type;
 bool success = 0;

 if (!xfrm6_policy_check(((void*)0), XFRM_POLICY_IN, skb)) {
  struct sec_path *sp = skb_sec_path(skb);
  int nh;

  if (!(sp && sp->xvec[sp->len - 1]->props.flags &
     XFRM_STATE_ICMP))
   goto drop_no_count;

  if (!pskb_may_pull(skb, sizeof(*hdr) + sizeof(struct ipv6hdr)))
   goto drop_no_count;

  nh = skb_network_offset(skb);
  skb_set_network_header(skb, sizeof(*hdr));

  if (!xfrm6_policy_check_reverse(((void*)0), XFRM_POLICY_IN, skb))
   goto drop_no_count;

  skb_set_network_header(skb, nh);
 }

 __ICMP6_INC_STATS(dev_net(dev), idev, ICMP6_MIB_INMSGS);

 saddr = &ipv6_hdr(skb)->saddr;
 daddr = &ipv6_hdr(skb)->daddr;

 if (skb_checksum_validate(skb, IPPROTO_ICMPV6, ip6_compute_pseudo)) {
  net_dbg_ratelimited("ICMPv6 checksum failed [%pI6c > %pI6c]\n",
        saddr, daddr);
  goto csum_error;
 }

 if (!pskb_pull(skb, sizeof(*hdr)))
  goto discard_it;

 hdr = icmp6_hdr(skb);

 type = hdr->icmp6_type;

 ICMP6MSGIN_INC_STATS(dev_net(dev), idev, type);

 switch (type) {
 case 144:
  if (!net->ipv6.sysctl.icmpv6_echo_ignore_all)
   icmpv6_echo_reply(skb);
  break;

 case 145:
  success = ping_rcv(skb);
  break;

 case 134:





  if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
   goto discard_it;
  hdr = icmp6_hdr(skb);



 case 148:
 case 133:
 case 135:
  icmpv6_notify(skb, type, hdr->icmp6_code, hdr->icmp6_mtu);
  break;

 case 128:
 case 129:
 case 131:
 case 132:
 case 130:
  ndisc_rcv(skb);
  break;

 case 143:
  igmp6_event_query(skb);
  break;

 case 141:
  igmp6_event_report(skb);
  break;

 case 142:
 case 137:
 case 136:
 case 140:
 case 146:
 case 147:
 case 138:
 case 139:
  break;

 default:

  if (type & ICMPV6_INFOMSG_MASK)
   break;

  net_dbg_ratelimited("icmpv6: msg of unknown type [%pI6c > %pI6c]\n",
        saddr, daddr);






  icmpv6_notify(skb, type, hdr->icmp6_code, hdr->icmp6_mtu);
 }




 if (success)
  consume_skb(skb);
 else
  kfree_skb(skb);

 return 0;

csum_error:
 __ICMP6_INC_STATS(dev_net(dev), idev, ICMP6_MIB_CSUMERRORS);
discard_it:
 __ICMP6_INC_STATS(dev_net(dev), idev, ICMP6_MIB_INERRORS);
drop_no_count:
 kfree_skb(skb);
 return 0;
}
