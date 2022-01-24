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
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__ mca_users; struct ifmcaddr6* next; int /*<<< orphan*/  mca_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmcaddr6*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct inet6_dev *idev, const struct in6_addr *addr)
{
	struct ifmcaddr6 *ma, **map;

	FUNC0();

	FUNC5(&idev->lock);
	for (map = &idev->mc_list; (ma = *map) != NULL; map = &ma->next) {
		if (FUNC3(&ma->mca_addr, addr)) {
			if (--ma->mca_users == 0) {
				*map = ma->next;
				FUNC6(&idev->lock);

				FUNC1(ma);
				FUNC2(ma);

				FUNC4(ma);
				return 0;
			}
			FUNC6(&idev->lock);
			return 0;
		}
	}
	FUNC6(&idev->lock);

	return -ENOENT;
}