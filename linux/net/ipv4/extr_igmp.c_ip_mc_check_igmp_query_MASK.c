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
struct sk_buff {int dummy; } ;
struct igmpv3_query {int dummy; } ;
struct igmphdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  group; } ;
struct TYPE_3__ {scalar_t__ daddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INADDR_ALLHOSTS_GROUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	unsigned int transport_len = FUNC4(skb);
	unsigned int len;

	/* IGMPv{1,2}? */
	if (transport_len != sizeof(struct igmphdr)) {
		/* or IGMPv3? */
		if (transport_len < sizeof(struct igmpv3_query))
			return -EINVAL;

		len = FUNC5(skb) + sizeof(struct igmpv3_query);
		if (!FUNC3(skb, len))
			return -EINVAL;
	}

	/* RFC2236+RFC3376 (IGMPv2+IGMPv3) require the multicast link layer
	 * all-systems destination addresses (224.0.0.1) for general queries
	 */
	if (!FUNC1(skb)->group &&
	    FUNC2(skb)->daddr != FUNC0(INADDR_ALLHOSTS_GROUP))
		return -EINVAL;

	return 0;
}