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
struct ip6_sf_list {scalar_t__* sf_count; int /*<<< orphan*/  sf_addr; struct ip6_sf_list* sf_next; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__* mca_sfcount; int /*<<< orphan*/  mca_lock; struct ip6_sf_list* mca_sources; int /*<<< orphan*/  mca_addr; struct ifmcaddr6* next; } ;

/* Variables and functions */
 size_t MCAST_EXCLUDE ; 
 size_t MCAST_INCLUDE ; 
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

bool FUNC9(struct net_device *dev, const struct in6_addr *group,
			 const struct in6_addr *src_addr)
{
	struct inet6_dev *idev;
	struct ifmcaddr6 *mc;
	bool rv = false;

	FUNC3();
	idev = FUNC0(dev);
	if (idev) {
		FUNC5(&idev->lock);
		for (mc = idev->mc_list; mc; mc = mc->next) {
			if (FUNC2(&mc->mca_addr, group))
				break;
		}
		if (mc) {
			if (src_addr && !FUNC1(src_addr)) {
				struct ip6_sf_list *psf;

				FUNC7(&mc->mca_lock);
				for (psf = mc->mca_sources; psf; psf = psf->sf_next) {
					if (FUNC2(&psf->sf_addr, src_addr))
						break;
				}
				if (psf)
					rv = psf->sf_count[MCAST_INCLUDE] ||
						psf->sf_count[MCAST_EXCLUDE] !=
						mc->mca_sfcount[MCAST_EXCLUDE];
				else
					rv = mc->mca_sfcount[MCAST_EXCLUDE] != 0;
				FUNC8(&mc->mca_lock);
			} else
				rv = true; /* don't filter unspecified source */
		}
		FUNC6(&idev->lock);
	}
	FUNC4();
	return rv;
}