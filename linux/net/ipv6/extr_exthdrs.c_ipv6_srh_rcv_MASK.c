#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int transport_header; scalar_t__ ip_summed; int /*<<< orphan*/  dev; scalar_t__ encapsulation; } ;
struct TYPE_9__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_sr_hdr {int segments_left; scalar_t__ nexthdr; int hdrlen; struct in6_addr* segments; } ;
struct inet6_skb_parm {int srcrt; int lastopt; scalar_t__* nhoff; } ;
struct TYPE_10__ {int seg6_enabled; } ;
struct inet6_dev {TYPE_3__ cnf; } ;
struct in6_addr {int dummy; } ;
struct TYPE_13__ {int hop_limit; struct in6_addr daddr; } ;
struct TYPE_12__ {TYPE_4__* dev; scalar_t__ error; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_8__ {int seg6_enabled; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ICMPV6_EXC_HOPLIMIT ; 
 int /*<<< orphan*/  ICMPV6_HDR_FIELD ; 
 int /*<<< orphan*/  ICMPV6_TIME_EXCEED ; 
 int IFF_LOOPBACK ; 
 struct inet6_skb_parm* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 scalar_t__ NEXTHDR_IPV6 ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct net*) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 TYPE_6__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 TYPE_5__* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int FUNC20 (struct sk_buff*) ; 
 int FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*) ; 
 int FUNC27 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC28(struct sk_buff *skb)
{
	struct inet6_skb_parm *opt = FUNC0(skb);
	struct net *net = FUNC4(skb->dev);
	struct ipv6_sr_hdr *hdr;
	struct inet6_dev *idev;
	struct in6_addr *addr;
	int accept_seg6;

	hdr = (struct ipv6_sr_hdr *)FUNC27(skb);

	idev = FUNC2(skb->dev);

	accept_seg6 = net->ipv6.devconf_all->seg6_enabled;
	if (accept_seg6 > idev->cnf.seg6_enabled)
		accept_seg6 = idev->cnf.seg6_enabled;

	if (!accept_seg6) {
		FUNC11(skb);
		return -1;
	}

#ifdef CONFIG_IPV6_SEG6_HMAC
	if (!seg6_hmac_validate_skb(skb)) {
		kfree_skb(skb);
		return -1;
	}
#endif

looped_back:
	if (hdr->segments_left == 0) {
		if (hdr->nexthdr == NEXTHDR_IPV6) {
			int offset = (hdr->hdrlen + 1) << 3;

			FUNC22(skb, FUNC20(skb),
					   FUNC21(skb));

			if (!FUNC14(skb, offset)) {
				FUNC11(skb);
				return -1;
			}
			FUNC22(skb, FUNC27(skb),
					   offset);

			FUNC25(skb);
			FUNC26(skb);
			skb->encapsulation = 0;

			FUNC3(skb, skb->dev, net);

			FUNC12(skb);
			return -1;
		}

		opt->srcrt = FUNC21(skb);
		opt->lastopt = opt->srcrt;
		skb->transport_header += (hdr->hdrlen + 1) << 3;
		opt->nhoff = (&hdr->nexthdr) - FUNC20(skb);

		return 1;
	}

	if (hdr->segments_left >= (hdr->hdrlen >> 1)) {
		FUNC1(net, idev, IPSTATS_MIB_INHDRERRORS);
		FUNC6(skb, ICMPV6_HDR_FIELD,
				  ((&hdr->segments_left) -
				   FUNC20(skb)));
		return -1;
	}

	if (FUNC17(skb)) {
		if (FUNC13(skb, 0, 0, GFP_ATOMIC)) {
			FUNC1(net, FUNC8(FUNC18(skb)),
					IPSTATS_MIB_OUTDISCARDS);
			FUNC11(skb);
			return -1;
		}
	}

	hdr = (struct ipv6_sr_hdr *)FUNC27(skb);

	hdr->segments_left--;
	addr = hdr->segments + hdr->segments_left;

	FUNC24(skb, sizeof(struct ipv6hdr));

	if (skb->ip_summed == CHECKSUM_COMPLETE)
		FUNC16(skb);

	FUNC10(skb)->daddr = *addr;

	FUNC19(skb);

	FUNC9(skb);

	if (FUNC18(skb)->error) {
		FUNC5(skb);
		return -1;
	}

	if (FUNC18(skb)->dev->flags & IFF_LOOPBACK) {
		if (FUNC10(skb)->hop_limit <= 1) {
			FUNC1(net, idev, IPSTATS_MIB_INHDRERRORS);
			FUNC7(skb, ICMPV6_TIME_EXCEED,
				    ICMPV6_EXC_HOPLIMIT, 0);
			FUNC11(skb);
			return -1;
		}
		FUNC10(skb)->hop_limit--;

		FUNC23(skb, sizeof(struct ipv6hdr));
		goto looped_back;
	}

	FUNC5(skb);

	return -1;
}