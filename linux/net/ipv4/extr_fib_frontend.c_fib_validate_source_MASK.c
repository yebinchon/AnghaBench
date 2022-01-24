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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {scalar_t__ fib_has_custom_local_routes; } ;
struct net {TYPE_1__ ipv4; } ;
struct in_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct in_device*) ; 
 int FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct net_device*,int,struct in_device*,scalar_t__*) ; 
 struct net* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 
 scalar_t__ FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 

int FUNC9(struct sk_buff *skb, __be32 src, __be32 dst,
			u8 tos, int oif, struct net_device *dev,
			struct in_device *idev, u32 *itag)
{
	int r = FUNC8(skb) ? 0 : FUNC1(idev);
	struct net *net = FUNC4(dev);

	if (!r && !FUNC6(net) &&
	    (dev->ifindex != oif || !FUNC2(idev))) {
		if (FUNC0(idev))
			goto ok;
		/* with custom local routes in place, checking local addresses
		 * only will be too optimistic, with custom rules, checking
		 * local addresses only can be too strict, e.g. due to vrf
		 */
		if (net->ipv4.fib_has_custom_local_routes ||
		    FUNC5(net))
			goto full_check;
		if (FUNC7(net, src))
			return -EINVAL;

ok:
		*itag = 0;
		return 0;
	}

full_check:
	return FUNC3(skb, src, dst, tos, oif, dev, r, idev, itag);
}