#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long expires; } ;
struct ifmcaddr6 {int mca_flags; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_refcnt; TYPE_2__ mca_timer; TYPE_1__* idev; int /*<<< orphan*/  mca_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_MGM_REPORT ; 
 int MAF_LAST_REPORTER ; 
 int MAF_NOREPORT ; 
 int MAF_TIMER_RUNNING ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned long) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(struct ifmcaddr6 *ma)
{
	unsigned long delay;

	if (ma->mca_flags & MAF_NOREPORT)
		return;

	FUNC1(&ma->mca_addr, ma->idev->dev, ICMPV6_MGM_REPORT);

	delay = FUNC3() % FUNC8(ma->idev);

	FUNC6(&ma->mca_lock);
	if (FUNC0(&ma->mca_timer)) {
		FUNC4(&ma->mca_refcnt);
		delay = ma->mca_timer.expires - jiffies;
	}

	if (!FUNC2(&ma->mca_timer, jiffies + delay))
		FUNC5(&ma->mca_refcnt);
	ma->mca_flags |= MAF_TIMER_RUNNING | MAF_LAST_REPORTER;
	FUNC7(&ma->mca_lock);
}