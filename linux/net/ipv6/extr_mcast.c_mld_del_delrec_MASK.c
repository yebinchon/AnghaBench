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
struct ip6_sf_list {int /*<<< orphan*/  sf_crcount; struct ip6_sf_list* sf_next; } ;
struct inet6_dev {int /*<<< orphan*/  mc_qrv; int /*<<< orphan*/  mc_lock; struct ifmcaddr6* mc_tomb; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__ mca_sfmode; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  idev; int /*<<< orphan*/  mca_crcount; struct ip6_sf_list* mca_sources; struct ip6_sf_list* mca_tomb; struct ifmcaddr6* next; struct in6_addr mca_addr; } ;

/* Variables and functions */
 scalar_t__ MCAST_INCLUDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifmcaddr6*) ; 
 scalar_t__ FUNC2 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ip6_sf_list*,struct ip6_sf_list*) ; 

__attribute__((used)) static void FUNC7(struct inet6_dev *idev, struct ifmcaddr6 *im)
{
	struct ifmcaddr6 *pmc, *pmc_prev;
	struct ip6_sf_list *psf;
	struct in6_addr *pmca = &im->mca_addr;

	FUNC4(&idev->mc_lock);
	pmc_prev = NULL;
	for (pmc = idev->mc_tomb; pmc; pmc = pmc->next) {
		if (FUNC2(&pmc->mca_addr, pmca))
			break;
		pmc_prev = pmc;
	}
	if (pmc) {
		if (pmc_prev)
			pmc_prev->next = pmc->next;
		else
			idev->mc_tomb = pmc->next;
	}
	FUNC5(&idev->mc_lock);

	FUNC4(&im->mca_lock);
	if (pmc) {
		im->idev = pmc->idev;
		if (im->mca_sfmode == MCAST_INCLUDE) {
			FUNC6(im->mca_tomb, pmc->mca_tomb);
			FUNC6(im->mca_sources, pmc->mca_sources);
			for (psf = im->mca_sources; psf; psf = psf->sf_next)
				psf->sf_crcount = idev->mc_qrv;
		} else {
			im->mca_crcount = idev->mc_qrv;
		}
		FUNC0(pmc->idev);
		FUNC1(pmc);
		FUNC3(pmc);
	}
	FUNC5(&im->mca_lock);
}