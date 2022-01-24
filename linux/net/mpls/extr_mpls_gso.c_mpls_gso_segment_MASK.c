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
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ mac_len; struct sk_buff* next; TYPE_1__* dev; int /*<<< orphan*/  inner_protocol; scalar_t__ mac_header; } ;
typedef  int netdev_features_t ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int mpls_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,scalar_t__,scalar_t__) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int) ; 
 unsigned int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC14(struct sk_buff *skb,
				       netdev_features_t features)
{
	struct sk_buff *segs = FUNC0(-EINVAL);
	u16 mac_offset = skb->mac_header;
	netdev_features_t mpls_features;
	u16 mac_len = skb->mac_len;
	__be16 mpls_protocol;
	unsigned int mpls_hlen;

	FUNC11(skb);
	mpls_hlen = FUNC6(skb) - FUNC8(skb);
	if (FUNC13(!FUNC4(skb, mpls_hlen)))
		goto out;

	/* Setup inner SKB. */
	mpls_protocol = skb->protocol;
	skb->protocol = skb->inner_protocol;

	FUNC2(skb, mpls_hlen);

	skb->mac_len = 0;
	FUNC10(skb);

	/* Segment inner packet. */
	mpls_features = skb->dev->mpls_features & features;
	segs = FUNC7(skb, mpls_features);
	if (FUNC1(segs)) {
		FUNC5(skb, mpls_protocol, mpls_hlen, mac_offset,
				     mac_len);
		goto out;
	}
	skb = segs;

	mpls_hlen += mac_len;
	do {
		skb->mac_len = mac_len;
		skb->protocol = mpls_protocol;

		FUNC9(skb);

		FUNC3(skb, mpls_hlen);

		FUNC10(skb);
		FUNC12(skb, mac_len);
	} while ((skb = skb->next));

out:
	return segs;
}