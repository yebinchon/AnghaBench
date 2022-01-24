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
struct TYPE_2__ {int /*<<< orphan*/  ra; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP6SKB_ROUTERALERT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char const) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC5(struct sk_buff *skb, int optoff)
{
	const unsigned char *nh = FUNC4(skb);

	if (nh[optoff + 1] == 2) {
		FUNC0(skb)->flags |= IP6SKB_ROUTERALERT;
		FUNC2(&FUNC0(skb)->ra, nh + optoff + 2, sizeof(FUNC0(skb)->ra));
		return true;
	}
	FUNC3("ipv6_hop_ra: wrong RA length %d\n",
			    nh[optoff + 1]);
	FUNC1(skb);
	return false;
}