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
struct net_device {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ifacaddr6* ac_list; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {int /*<<< orphan*/  aca_addr; struct ifacaddr6* aca_next; } ;

/* Variables and functions */
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct net_device *dev, const struct in6_addr *addr)
{
	struct inet6_dev *idev;
	struct ifacaddr6 *aca;

	idev = FUNC0(dev);
	if (idev) {
		FUNC2(&idev->lock);
		for (aca = idev->ac_list; aca; aca = aca->aca_next)
			if (FUNC1(&aca->aca_addr, addr))
				break;
		FUNC3(&idev->lock);
		return aca != NULL;
	}
	return false;
}