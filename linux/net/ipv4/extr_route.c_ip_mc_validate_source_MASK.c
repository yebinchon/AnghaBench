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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ protocol; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  FUNC0 (struct in_device*) ; 
 scalar_t__ IPPROTO_IGMP ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,struct in_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct sk_buff *skb, __be32 daddr, __be32 saddr,
			  u8 tos, struct net_device *dev,
			  struct in_device *in_dev, u32 *itag)
{
	int err;

	/* Primary sanity checks. */
	if (!in_dev)
		return -EINVAL;

	if (FUNC7(saddr) || FUNC4(saddr) ||
	    skb->protocol != FUNC2(ETH_P_IP))
		return -EINVAL;

	if (FUNC6(saddr) && !FUNC0(in_dev))
		return -EINVAL;

	if (FUNC8(saddr)) {
		if (!FUNC5(daddr) &&
		    FUNC3(skb)->protocol != IPPROTO_IGMP)
			return -EINVAL;
	} else {
		err = FUNC1(skb, saddr, 0, tos, 0, dev,
					  in_dev, itag);
		if (err < 0)
			return err;
	}
	return 0;
}