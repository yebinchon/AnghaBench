#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet6_protocol {int flags; int /*<<< orphan*/  handler; } ;
struct inet6_dev {int dummy; } ;
struct TYPE_2__ {unsigned int nhoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_PARAMPROB ; 
 int /*<<< orphan*/  ICMPV6_UNK_NEXTHDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int INET6_PROTO_FINAL ; 
 int INET6_PROTO_NOPOLICY ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDELIVERS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INUNKNOWNPROTOS ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct net_device* FUNC4 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * inet6_protos ; 
 int FUNC6 (struct sk_buff*) ; 
 struct inet6_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct sk_buff*,int) ; 
 struct inet6_protocol* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  tcp_v6_rcv ; 
 int /*<<< orphan*/  udpv6_rcv ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

void FUNC23(struct net *net, struct sk_buff *skb, int nexthdr,
			      bool have_final)
{
	const struct inet6_protocol *ipprot;
	struct inet6_dev *idev;
	unsigned int nhoff;
	bool raw;

	/*
	 *	Parse extension headers
	 */

resubmit:
	idev = FUNC7(FUNC17(skb));
	nhoff = FUNC1(skb)->nhoff;
	if (!have_final) {
		if (!FUNC14(skb, FUNC21(skb)))
			goto discard;
		nexthdr = FUNC18(skb)[nhoff];
	}

resubmit_final:
	raw = FUNC15(skb, nexthdr);
	ipprot = FUNC16(inet6_protos[nexthdr]);
	if (ipprot) {
		int ret;

		if (have_final) {
			if (!(ipprot->flags & INET6_PROTO_FINAL)) {
				/* Once we've seen a final protocol don't
				 * allow encapsulation on any non-final
				 * ones. This allows foo in UDP encapsulation
				 * to work.
				 */
				goto discard;
			}
		} else if (ipprot->flags & INET6_PROTO_FINAL) {
			const struct ipv6hdr *hdr;
			int sdif = FUNC6(skb);
			struct net_device *dev;

			/* Only do this once for first final protocol */
			have_final = true;

			/* Free reference early: we don't need it any more,
			   and it may hold ip_conntrack module loaded
			   indefinitely. */
			FUNC13(skb);

			FUNC20(skb, FUNC18(skb),
					   FUNC19(skb));
			hdr = FUNC10(skb);

			/* skb->dev passed may be master dev for vrfs. */
			if (sdif) {
				dev = FUNC4(net, sdif);
				if (!dev)
					goto discard;
			} else {
				dev = skb->dev;
			}

			if (FUNC8(&hdr->daddr) &&
			    !FUNC9(dev, &hdr->daddr,
						 &hdr->saddr) &&
			    !FUNC11(skb, nexthdr, FUNC19(skb)))
				goto discard;
		}
		if (!(ipprot->flags & INET6_PROTO_NOPOLICY) &&
		    !FUNC22(NULL, XFRM_POLICY_IN, skb))
			goto discard;

		ret = FUNC0(ipprot->handler, tcp_v6_rcv, udpv6_rcv,
				      skb);
		if (ret > 0) {
			if (ipprot->flags & INET6_PROTO_FINAL) {
				/* Not an extension header, most likely UDP
				 * encapsulation. Use return value as nexthdr
				 * protocol not nhoff (which presumably is
				 * not set by handler).
				 */
				nexthdr = ret;
				goto resubmit_final;
			} else {
				goto resubmit;
			}
		} else if (ret == 0) {
			FUNC2(net, idev, IPSTATS_MIB_INDELIVERS);
		}
	} else {
		if (!raw) {
			if (FUNC22(NULL, XFRM_POLICY_IN, skb)) {
				FUNC2(net, idev,
						IPSTATS_MIB_INUNKNOWNPROTOS);
				FUNC5(skb, ICMPV6_PARAMPROB,
					    ICMPV6_UNK_NEXTHDR, nhoff);
			}
			FUNC12(skb);
		} else {
			FUNC2(net, idev, IPSTATS_MIB_INDELIVERS);
			FUNC3(skb);
		}
	}
	return;

discard:
	FUNC2(net, idev, IPSTATS_MIB_INDISCARDS);
	FUNC12(skb);
}