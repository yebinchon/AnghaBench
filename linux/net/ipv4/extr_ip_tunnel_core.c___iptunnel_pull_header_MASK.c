#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  ETH_P_TEB ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct sk_buff *skb, int hdr_len,
			   __be16 inner_proto, bool raw_proto, bool xnet)
{
	if (FUNC10(!FUNC5(skb, hdr_len)))
		return -ENOMEM;

	FUNC7(skb, hdr_len);

	if (!raw_proto && inner_proto == FUNC2(ETH_P_TEB)) {
		struct ethhdr *eh;

		if (FUNC10(!FUNC5(skb, ETH_HLEN)))
			return -ENOMEM;

		eh = (struct ethhdr *)skb->data;
		if (FUNC4(FUNC1(eh->h_proto)))
			skb->protocol = eh->h_proto;
		else
			skb->protocol = FUNC2(ETH_P_802_2);

	} else {
		skb->protocol = inner_proto;
	}

	FUNC6(skb);
	FUNC0(skb);
	FUNC9(skb, 0);
	FUNC8(skb, xnet);

	return FUNC3(skb);
}