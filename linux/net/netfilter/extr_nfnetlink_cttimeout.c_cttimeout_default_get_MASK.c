#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_l4proto {int l4proto; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_18__ {int /*<<< orphan*/  portid; } ;
struct TYPE_17__ {unsigned int* dccp_timeout; } ;
struct TYPE_16__ {unsigned int timeout; } ;
struct TYPE_15__ {unsigned int* timeouts; } ;
struct TYPE_14__ {unsigned int timeout; } ;
struct TYPE_13__ {unsigned int timeout; } ;
struct TYPE_12__ {unsigned int* timeouts; } ;
struct TYPE_11__ {unsigned int* timeouts; } ;
struct TYPE_10__ {unsigned int* timeouts; } ;

/* Variables and functions */
 size_t CTA_TIMEOUT_L3PROTO ; 
 size_t CTA_TIMEOUT_L4PROTO ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPCTNL_MSG_TIMEOUT_DEFAULT_SET ; 
#define  IPPROTO_DCCP 135 
#define  IPPROTO_GRE 134 
#define  IPPROTO_ICMP 133 
#define  IPPROTO_ICMPV6 132 
#define  IPPROTO_SCTP 131 
#define  IPPROTO_TCP 130 
#define  IPPROTO_UDP 129 
#define  IPPROTO_UDPLITE 128 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_9__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int FUNC3 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_l4proto const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_l4proto* FUNC6 (int) ; 
 TYPE_8__* FUNC7 (struct net*) ; 
 TYPE_7__* FUNC8 (struct net*) ; 
 TYPE_6__* FUNC9 (struct net*) ; 
 TYPE_5__* FUNC10 (struct net*) ; 
 TYPE_4__* FUNC11 (struct net*) ; 
 TYPE_3__* FUNC12 (struct net*) ; 
 TYPE_2__* FUNC13 (struct net*) ; 
 TYPE_1__* FUNC14 (struct net*) ; 
 int /*<<< orphan*/  FUNC15 (struct nlattr const* const) ; 
 int FUNC16 (struct nlattr const* const) ; 
 struct sk_buff* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct net *net, struct sock *ctnl,
				 struct sk_buff *skb,
				 const struct nlmsghdr *nlh,
				 const struct nlattr * const cda[],
				 struct netlink_ext_ack *extack)
{
	const struct nf_conntrack_l4proto *l4proto;
	unsigned int *timeouts = NULL;
	struct sk_buff *skb2;
	int ret, err;
	__u16 l3num;
	__u8 l4num;

	if (!cda[CTA_TIMEOUT_L3PROTO] || !cda[CTA_TIMEOUT_L4PROTO])
		return -EINVAL;

	l3num = FUNC18(FUNC15(cda[CTA_TIMEOUT_L3PROTO]));
	l4num = FUNC16(cda[CTA_TIMEOUT_L4PROTO]);
	l4proto = FUNC6(l4num);

	err = -EOPNOTSUPP;
	if (l4proto->l4proto != l4num)
		goto err;

	switch (l4proto->l4proto) {
	case IPPROTO_ICMP:
		timeouts = &FUNC10(net)->timeout;
		break;
	case IPPROTO_TCP:
		timeouts = FUNC13(net)->timeouts;
		break;
	case IPPROTO_UDP: /* fallthrough */
	case IPPROTO_UDPLITE:
		timeouts = FUNC14(net)->timeouts;
		break;
	case IPPROTO_DCCP:
#ifdef CONFIG_NF_CT_PROTO_DCCP
		timeouts = nf_dccp_pernet(net)->dccp_timeout;
#endif
		break;
	case IPPROTO_ICMPV6:
		timeouts = &FUNC11(net)->timeout;
		break;
	case IPPROTO_SCTP:
#ifdef CONFIG_NF_CT_PROTO_SCTP
		timeouts = nf_sctp_pernet(net)->timeouts;
#endif
		break;
	case IPPROTO_GRE:
#ifdef CONFIG_NF_CT_PROTO_GRE
		timeouts = nf_gre_pernet(net)->timeouts;
#endif
		break;
	case 255:
		timeouts = &FUNC8(net)->timeout;
		break;
	default:
		FUNC2(1, "Missing timeouts for proto %d", l4proto->l4proto);
		break;
	}

	if (!timeouts)
		goto err;

	skb2 = FUNC17(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL) {
		err = -ENOMEM;
		goto err;
	}

	ret = FUNC3(net, skb2, FUNC0(skb).portid,
					  nlh->nlmsg_seq,
					  FUNC1(nlh->nlmsg_type),
					  IPCTNL_MSG_TIMEOUT_DEFAULT_SET,
					  l3num, l4proto, timeouts);
	if (ret <= 0) {
		FUNC4(skb2);
		err = -ENOMEM;
		goto err;
	}
	ret = FUNC5(ctnl, skb2, FUNC0(skb).portid, MSG_DONTWAIT);
	if (ret > 0)
		ret = 0;

	/* this avoids a loop in nfnetlink. */
	return ret == -EAGAIN ? -ENOBUFS : ret;
err:
	return err;
}