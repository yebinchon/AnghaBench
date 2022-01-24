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
struct mld_msg {int /*<<< orphan*/  mld_mca; } ;
struct mld2_query {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int IPV6_ADDR_LINKLOCAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb)
{
	unsigned int transport_len = FUNC5(skb);
	struct mld_msg *mld;
	unsigned int len;

	/* RFC2710+RFC3810 (MLDv1+MLDv2) require link-local source addresses */
	if (!(FUNC2(&FUNC3(skb)->saddr) & IPV6_ADDR_LINKLOCAL))
		return -EINVAL;

	/* MLDv1? */
	if (transport_len != sizeof(struct mld_msg)) {
		/* or MLDv2? */
		if (transport_len < sizeof(struct mld2_query))
			return -EINVAL;

		len = FUNC7(skb) + sizeof(struct mld2_query);
		if (!FUNC4(skb, len))
			return -EINVAL;
	}

	mld = (struct mld_msg *)FUNC6(skb);

	/* RFC2710+RFC3810 (MLDv1+MLDv2) require the multicast link layer
	 * all-nodes destination address (ff02::1) for general queries
	 */
	if (FUNC0(&mld->mld_mca) &&
	    !FUNC1(&FUNC3(skb)->daddr))
		return -EINVAL;

	return 0;
}