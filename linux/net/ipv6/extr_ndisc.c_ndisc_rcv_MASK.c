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
struct sk_buff {scalar_t__ data; } ;
struct neighbour_cb {int dummy; } ;
struct TYPE_3__ {int icmp6_code; int icmp6_type; } ;
struct nd_msg {TYPE_1__ icmph; } ;
struct TYPE_4__ {int hop_limit; } ;

/* Variables and functions */
#define  NDISC_NEIGHBOUR_ADVERTISEMENT 132 
#define  NDISC_NEIGHBOUR_SOLICITATION 131 
#define  NDISC_REDIRECT 130 
#define  NDISC_ROUTER_ADVERTISEMENT 129 
#define  NDISC_ROUTER_SOLICITATION 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  warn ; 

int FUNC13(struct sk_buff *skb)
{
	struct nd_msg *msg;

	if (FUNC10(skb))
		return 0;

	if (FUNC11(skb))
		return 0;

	msg = (struct nd_msg *)FUNC12(skb);

	FUNC2(skb, skb->data - FUNC12(skb));

	if (FUNC3(skb)->hop_limit != 255) {
		FUNC0(2, warn, "NDISC: invalid hop-limit: %d\n",
			  FUNC3(skb)->hop_limit);
		return 0;
	}

	if (msg->icmph.icmp6_code != 0) {
		FUNC0(2, warn, "NDISC: invalid ICMPv6 code: %d\n",
			  msg->icmph.icmp6_code);
		return 0;
	}

	switch (msg->icmph.icmp6_type) {
	case NDISC_NEIGHBOUR_SOLICITATION:
		FUNC4(FUNC1(skb), 0, sizeof(struct neighbour_cb));
		FUNC6(skb);
		break;

	case NDISC_NEIGHBOUR_ADVERTISEMENT:
		FUNC5(skb);
		break;

	case NDISC_ROUTER_SOLICITATION:
		FUNC7(skb);
		break;

	case NDISC_ROUTER_ADVERTISEMENT:
		FUNC9(skb);
		break;

	case NDISC_REDIRECT:
		FUNC8(skb);
		break;
	}

	return 0;
}