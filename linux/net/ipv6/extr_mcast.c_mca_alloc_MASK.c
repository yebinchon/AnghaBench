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
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {int mca_users; unsigned int mca_sfmode; int* mca_sfcount; int /*<<< orphan*/  mca_flags; struct in6_addr mca_addr; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_refcnt; int /*<<< orphan*/  mca_tstamp; int /*<<< orphan*/  mca_cstamp; struct inet6_dev* idev; int /*<<< orphan*/  mca_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ; 
 int /*<<< orphan*/  MAF_NOREPORT ; 
 int /*<<< orphan*/  igmp6_timer_handler ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ifmcaddr6* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ifmcaddr6 *FUNC6(struct inet6_dev *idev,
				   const struct in6_addr *addr,
				   unsigned int mode)
{
	struct ifmcaddr6 *mc;

	mc = FUNC2(sizeof(*mc), GFP_ATOMIC);
	if (!mc)
		return NULL;

	FUNC5(&mc->mca_timer, igmp6_timer_handler, 0);

	mc->mca_addr = *addr;
	mc->idev = idev; /* reference taken by caller */
	mc->mca_users = 1;
	/* mca_stamp should be updated upon changes */
	mc->mca_cstamp = mc->mca_tstamp = jiffies;
	FUNC3(&mc->mca_refcnt, 1);
	FUNC4(&mc->mca_lock);

	mc->mca_sfmode = mode;
	mc->mca_sfcount[mode] = 1;

	if (FUNC1(&mc->mca_addr) ||
	    FUNC0(&mc->mca_addr) < IPV6_ADDR_SCOPE_LINKLOCAL)
		mc->mca_flags |= MAF_NOREPORT;

	return mc;
}