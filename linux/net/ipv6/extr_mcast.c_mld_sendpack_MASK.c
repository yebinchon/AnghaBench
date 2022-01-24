#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_2__* dev; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int /*<<< orphan*/  igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct mld2_report {int /*<<< orphan*/  mld2r_cksum; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  payload_len; } ;
struct inet6_dev {int dummy; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTMSGS ; 
 int /*<<< orphan*/  ICMPV6_MLD2_REPORT ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 scalar_t__ FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int FUNC6 (struct dst_entry*) ; 
 struct inet6_dev* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  dst_output ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct dst_entry* FUNC12 (TYPE_2__*,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct flowi6*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct dst_entry*) ; 
 int FUNC19 (struct sk_buff*) ; 
 int FUNC20 (struct sk_buff*) ; 
 int FUNC21 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC22(struct sk_buff *skb)
{
	struct ipv6hdr *pip6 = FUNC14(skb);
	struct mld2_report *pmr =
			      (struct mld2_report *)FUNC21(skb);
	int payload_len, mldlen;
	struct inet6_dev *idev;
	struct net *net = FUNC10(skb->dev);
	int err;
	struct flowi6 fl6;
	struct dst_entry *dst;

	FUNC16();
	idev = FUNC7(skb->dev);
	FUNC3(net, idev, IPSTATS_MIB_OUT, skb->len);

	payload_len = (FUNC20(skb) - FUNC19(skb)) -
		sizeof(*pip6);
	mldlen = FUNC20(skb) - FUNC21(skb);
	pip6->payload_len = FUNC11(payload_len);

	pmr->mld2r_cksum = FUNC8(&pip6->saddr, &pip6->daddr, mldlen,
					   IPPROTO_ICMPV6,
					   FUNC9(FUNC21(skb),
							mldlen, 0));

	FUNC13(net->ipv6.igmp_sk, &fl6, ICMPV6_MLD2_REPORT,
			 &FUNC14(skb)->saddr, &FUNC14(skb)->daddr,
			 skb->dev->ifindex);
	dst = FUNC12(skb->dev, &fl6);

	err = 0;
	if (FUNC4(dst)) {
		err = FUNC6(dst);
		dst = NULL;
	}
	FUNC18(skb, dst);
	if (err)
		goto err_out;

	err = FUNC5(NFPROTO_IPV6, NF_INET_LOCAL_OUT,
		      net, net->ipv6.igmp_sk, skb, NULL, skb->dev,
		      dst_output);
out:
	if (!err) {
		FUNC0(net, idev, ICMPV6_MLD2_REPORT);
		FUNC1(net, idev, ICMP6_MIB_OUTMSGS);
	} else {
		FUNC2(net, idev, IPSTATS_MIB_OUTDISCARDS);
	}

	FUNC17();
	return;

err_out:
	FUNC15(skb);
	goto out;
}