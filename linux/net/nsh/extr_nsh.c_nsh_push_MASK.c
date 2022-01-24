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
typedef  scalar_t__ u8 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; scalar_t__ mac_len; } ;
struct nshhdr {scalar_t__ np; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_NSH ; 
 scalar_t__ TUN_P_ETHERNET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nshhdr*,struct nshhdr const*,size_t) ; 
 size_t FUNC2 (struct nshhdr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nshhdr*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct sk_buff *skb, const struct nshhdr *pushed_nh)
{
	struct nshhdr *nh;
	size_t length = FUNC2(pushed_nh);
	u8 next_proto;

	if (skb->mac_len) {
		next_proto = TUN_P_ETHERNET;
	} else {
		next_proto = FUNC9(skb->protocol);
		if (!next_proto)
			return -EAFNOSUPPORT;
	}

	/* Add the NSH header */
	if (FUNC3(skb, length) < 0)
		return -ENOMEM;

	FUNC5(skb, length);
	nh = (struct nshhdr *)(skb->data);
	FUNC1(nh, pushed_nh, length);
	nh->np = next_proto;
	FUNC4(skb, nh, length);

	skb->protocol = FUNC0(ETH_P_NSH);
	FUNC6(skb);
	FUNC8(skb);
	FUNC7(skb);

	return 0;
}