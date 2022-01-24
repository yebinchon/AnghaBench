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
struct TYPE_2__ {struct net_device* dev; } ;
struct rt6_info {TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt6_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rt6_info* FUNC5 (struct net*,struct in6_addr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inet6_dev *FUNC6(struct net *net,
					     const struct in6_addr *group,
					     int ifindex)
{
	struct net_device *dev = NULL;
	struct inet6_dev *idev = NULL;

	if (ifindex == 0) {
		struct rt6_info *rt = FUNC5(net, group, NULL, 0, NULL, 0);

		if (rt) {
			dev = rt->dst.dev;
			FUNC2(rt);
		}
	} else
		dev = FUNC1(net, ifindex);

	if (!dev)
		return NULL;
	idev = FUNC0(dev);
	if (!idev)
		return NULL;
	FUNC3(&idev->lock);
	if (idev->dead) {
		FUNC4(&idev->lock);
		return NULL;
	}
	return idev;
}