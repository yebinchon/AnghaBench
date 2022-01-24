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
struct sk_buff {int /*<<< orphan*/  protocol; TYPE_1__* dev; } ;
struct ethhdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 void* ETH_HLEN ; 
 scalar_t__ MPLS_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct ethhdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct sk_buff *skb, __be16 next_proto, int mac_len)
{
	int err;

	if (FUNC10(!FUNC1(skb->protocol)))
		return 0;

	err = FUNC4(skb, mac_len + MPLS_HLEN);
	if (FUNC10(err))
		return err;

	FUNC7(skb, FUNC3(skb), MPLS_HLEN);
	FUNC2(FUNC5(skb) + MPLS_HLEN, FUNC5(skb),
		mac_len);

	FUNC0(skb, MPLS_HLEN);
	FUNC8(skb);
	FUNC9(skb, mac_len);

	if (skb->dev && skb->dev->type == ARPHRD_ETHER) {
		struct ethhdr *hdr;

		/* use mpls_hdr() to get ethertype to account for VLANs. */
		hdr = (struct ethhdr *)((void *)FUNC3(skb) - ETH_HLEN);
		FUNC6(skb, hdr, next_proto);
	}
	skb->protocol = next_proto;

	return 0;
}