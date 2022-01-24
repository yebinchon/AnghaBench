#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {scalar_t__ loopback_dev; } ;
struct inet6_dev {int dummy; } ;
struct dst_entry {scalar_t__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  iif; } ;
struct TYPE_3__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int) ; 
 int IPSTATS_MIB_INADDRERRORS ; 
#define  IPSTATS_MIB_INNOROUTES 129 
#define  IPSTATS_MIB_OUTNOROUTES 128 
 int IPV6_ADDR_ANY ; 
 struct inet6_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC6 (struct dst_entry*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, u8 code, int ipstats_mib_noroutes)
{
	struct dst_entry *dst = FUNC11(skb);
	struct net *net = FUNC4(dst->dev);
	struct inet6_dev *idev;
	int type;

	if (FUNC10(skb->dev) &&
	    dst->dev == net->loopback_dev)
		idev = FUNC2(FUNC3(net, FUNC0(skb)->iif));
	else
		idev = FUNC6(dst);

	switch (ipstats_mib_noroutes) {
	case IPSTATS_MIB_INNOROUTES:
		type = FUNC7(&FUNC8(skb)->daddr);
		if (type == IPV6_ADDR_ANY) {
			FUNC1(net, idev, IPSTATS_MIB_INADDRERRORS);
			break;
		}
		/* FALLTHROUGH */
	case IPSTATS_MIB_OUTNOROUTES:
		FUNC1(net, idev, ipstats_mib_noroutes);
		break;
	}

	/* Start over by dropping the dst for l3mdev case */
	if (FUNC10(skb->dev))
		FUNC12(skb);

	FUNC5(skb, ICMPV6_DEST_UNREACH, code, 0);
	FUNC9(skb);
	return 0;
}