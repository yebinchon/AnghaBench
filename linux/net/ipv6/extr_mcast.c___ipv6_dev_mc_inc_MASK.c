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
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; int /*<<< orphan*/  mca_addr; int /*<<< orphan*/  mca_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct ifmcaddr6*) ; 
 struct inet6_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifmcaddr6*) ; 
 struct ifmcaddr6* FUNC7 (struct inet6_dev*,struct in6_addr const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC9 (struct inet6_dev*,struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev,
			     const struct in6_addr *addr, unsigned int mode)
{
	struct ifmcaddr6 *mc;
	struct inet6_dev *idev;

	FUNC0();

	/* we need to take a reference on idev */
	idev = FUNC2(dev);

	if (!idev)
		return -EINVAL;

	FUNC10(&idev->lock);
	if (idev->dead) {
		FUNC11(&idev->lock);
		FUNC3(idev);
		return -ENODEV;
	}

	for (mc = idev->mc_list; mc; mc = mc->next) {
		if (FUNC5(&mc->mca_addr, addr)) {
			mc->mca_users++;
			FUNC11(&idev->lock);
			FUNC4(idev, &mc->mca_addr, mode, 0, NULL, 0);
			FUNC3(idev);
			return 0;
		}
	}

	mc = FUNC7(idev, addr, mode);
	if (!mc) {
		FUNC11(&idev->lock);
		FUNC3(idev);
		return -ENOMEM;
	}

	mc->next = idev->mc_list;
	idev->mc_list = mc;

	/* Hold this for the code below before we unlock,
	 * it is already exposed via idev->mc_list.
	 */
	FUNC8(mc);
	FUNC11(&idev->lock);

	FUNC9(idev, mc);
	FUNC1(mc);
	FUNC6(mc);
	return 0;
}