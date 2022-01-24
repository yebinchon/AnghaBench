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
struct sk_buff {int len; int /*<<< orphan*/  dev; } ;
struct iphdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gateway; } ;
struct TYPE_4__ {TYPE_1__ un; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static bool FUNC6(struct sk_buff *skb)
{
	if (skb->len < sizeof(struct iphdr)) {
		FUNC0(FUNC1(skb->dev), ICMP_MIB_INERRORS);
		return false;
	}

	if (!FUNC5(skb, sizeof(struct iphdr))) {
		/* there aught to be a stat */
		return false;
	}

	FUNC3(skb, FUNC4(FUNC2(skb)->un.gateway));
	return true;
}