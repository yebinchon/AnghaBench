#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {struct net_device* dev; } ;
struct sec_path {int len; TYPE_2__** xvec; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  icmpv6_echo_ignore_all; } ;
struct TYPE_9__ {TYPE_3__ sysctl; } ;
struct net {TYPE_4__ ipv6; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int icmp6_type; int /*<<< orphan*/  icmp6_mtu; int /*<<< orphan*/  icmp6_code; } ;
struct TYPE_10__ {struct in6_addr daddr; struct in6_addr saddr; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int) ; 
 int /*<<< orphan*/  ICMP6_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  ICMP6_MIB_INERRORS ; 
 int /*<<< orphan*/  ICMP6_MIB_INMSGS ; 
#define  ICMPV6_DEST_UNREACH 148 
#define  ICMPV6_DHAAD_REPLY 147 
#define  ICMPV6_DHAAD_REQUEST 146 
#define  ICMPV6_ECHO_REPLY 145 
#define  ICMPV6_ECHO_REQUEST 144 
 int ICMPV6_INFOMSG_MASK ; 
#define  ICMPV6_MGM_QUERY 143 
#define  ICMPV6_MGM_REDUCTION 142 
#define  ICMPV6_MGM_REPORT 141 
#define  ICMPV6_MLD2_REPORT 140 
#define  ICMPV6_MOBILE_PREFIX_ADV 139 
#define  ICMPV6_MOBILE_PREFIX_SOL 138 
#define  ICMPV6_NI_QUERY 137 
#define  ICMPV6_NI_REPLY 136 
#define  ICMPV6_PARAMPROB 135 
#define  ICMPV6_PKT_TOOBIG 134 
#define  ICMPV6_TIME_EXCEED 133 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
#define  NDISC_NEIGHBOUR_ADVERTISEMENT 132 
#define  NDISC_NEIGHBOUR_SOLICITATION 131 
#define  NDISC_REDIRECT 130 
#define  NDISC_ROUTER_ADVERTISEMENT 129 
#define  NDISC_ROUTER_SOLICITATION 128 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int XFRM_STATE_ICMP ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct net* FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct sk_buff*) ; 
 struct icmp6hdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  ip6_compute_pseudo ; 
 TYPE_5__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct in6_addr const*,struct in6_addr const*) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 scalar_t__ FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct sk_buff*) ; 
 struct sec_path* FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC24(struct sk_buff *skb)
{
	struct net *net = FUNC4(skb->dev);
	struct net_device *dev = FUNC5(skb);
	struct inet6_dev *idev = FUNC2(dev);
	const struct in6_addr *saddr, *daddr;
	struct icmp6hdr *hdr;
	u8 type;
	bool success = false;

	if (!FUNC22(NULL, XFRM_POLICY_IN, skb)) {
		struct sec_path *sp = FUNC20(skb);
		int nh;

		if (!(sp && sp->xvec[sp->len - 1]->props.flags &
				 XFRM_STATE_ICMP))
			goto drop_no_count;

		if (!FUNC16(skb, sizeof(*hdr) + sizeof(struct ipv6hdr)))
			goto drop_no_count;

		nh = FUNC19(skb);
		FUNC21(skb, sizeof(*hdr));

		if (!FUNC23(NULL, XFRM_POLICY_IN, skb))
			goto drop_no_count;

		FUNC21(skb, nh);
	}

	FUNC1(FUNC4(dev), idev, ICMP6_MIB_INMSGS);

	saddr = &FUNC11(skb)->saddr;
	daddr = &FUNC11(skb)->daddr;

	if (FUNC18(skb, IPPROTO_ICMPV6, ip6_compute_pseudo)) {
		FUNC14("ICMPv6 checksum failed [%pI6c > %pI6c]\n",
				    saddr, daddr);
		goto csum_error;
	}

	if (!FUNC17(skb, sizeof(*hdr)))
		goto discard_it;

	hdr = FUNC6(skb);

	type = hdr->icmp6_type;

	FUNC0(FUNC4(dev), idev, type);

	switch (type) {
	case ICMPV6_ECHO_REQUEST:
		if (!net->ipv6.sysctl.icmpv6_echo_ignore_all)
			FUNC7(skb);
		break;

	case ICMPV6_ECHO_REPLY:
		success = FUNC15(skb);
		break;

	case ICMPV6_PKT_TOOBIG:
		/* BUGGG_FUTURE: if packet contains rthdr, we cannot update
		   standard destination cache. Seems, only "advanced"
		   destination cache will allow to solve this problem
		   --ANK (980726)
		 */
		if (!FUNC16(skb, sizeof(struct ipv6hdr)))
			goto discard_it;
		hdr = FUNC6(skb);

		/* to notify */
		/* fall through */
	case ICMPV6_DEST_UNREACH:
	case ICMPV6_TIME_EXCEED:
	case ICMPV6_PARAMPROB:
		FUNC8(skb, type, hdr->icmp6_code, hdr->icmp6_mtu);
		break;

	case NDISC_ROUTER_SOLICITATION:
	case NDISC_ROUTER_ADVERTISEMENT:
	case NDISC_NEIGHBOUR_SOLICITATION:
	case NDISC_NEIGHBOUR_ADVERTISEMENT:
	case NDISC_REDIRECT:
		FUNC13(skb);
		break;

	case ICMPV6_MGM_QUERY:
		FUNC9(skb);
		break;

	case ICMPV6_MGM_REPORT:
		FUNC10(skb);
		break;

	case ICMPV6_MGM_REDUCTION:
	case ICMPV6_NI_QUERY:
	case ICMPV6_NI_REPLY:
	case ICMPV6_MLD2_REPORT:
	case ICMPV6_DHAAD_REQUEST:
	case ICMPV6_DHAAD_REPLY:
	case ICMPV6_MOBILE_PREFIX_SOL:
	case ICMPV6_MOBILE_PREFIX_ADV:
		break;

	default:
		/* informational */
		if (type & ICMPV6_INFOMSG_MASK)
			break;

		FUNC14("icmpv6: msg of unknown type [%pI6c > %pI6c]\n",
				    saddr, daddr);

		/*
		 * error of unknown type.
		 * must pass to upper level
		 */

		FUNC8(skb, type, hdr->icmp6_code, hdr->icmp6_mtu);
	}

	/* until the v6 path can be better sorted assume failure and
	 * preserve the status quo behaviour for the rest of the paths to here
	 */
	if (success)
		FUNC3(skb);
	else
		FUNC12(skb);

	return 0;

csum_error:
	FUNC1(FUNC4(dev), idev, ICMP6_MIB_CSUMERRORS);
discard_it:
	FUNC1(FUNC4(dev), idev, ICMP6_MIB_INERRORS);
drop_no_count:
	FUNC12(skb);
	return 0;
}