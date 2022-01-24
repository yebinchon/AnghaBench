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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_UNK_OPTION ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC5(struct sk_buff *skb, int optoff,
			       bool disallow_unknowns)
{
	if (disallow_unknowns) {
		/* If unknown TLVs are disallowed by configuration
		 * then always silently drop packet. Note this also
		 * means no ICMP parameter problem is sent which
		 * could be a good property to mitigate a reflection DOS
		 * attack.
		 */

		goto drop;
	}

	switch ((FUNC4(skb)[optoff] & 0xC0) >> 6) {
	case 0: /* ignore */
		return true;

	case 1: /* drop packet */
		break;

	case 3: /* Send ICMP if not a multicast address and drop packet */
		/* Actually, it is redundant check. icmp_send
		   will recheck in any case.
		 */
		if (FUNC1(&FUNC2(skb)->daddr))
			break;
		/* fall through */
	case 2: /* send ICMP PARM PROB regardless and drop packet */
		FUNC0(skb, ICMPV6_UNK_OPTION, optoff);
		return false;
	}

drop:
	FUNC3(skb);
	return false;
}