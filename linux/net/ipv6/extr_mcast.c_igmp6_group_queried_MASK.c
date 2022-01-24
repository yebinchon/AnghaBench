#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* expires; } ;
struct ifmcaddr6 {int /*<<< orphan*/  mca_flags; int /*<<< orphan*/  mca_refcnt; TYPE_1__ mca_timer; int /*<<< orphan*/  mca_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ; 
 int /*<<< orphan*/  MAF_TIMER_RUNNING ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*) ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ifmcaddr6 *ma, unsigned long resptime)
{
	unsigned long delay = resptime;

	/* Do not start timer for these addresses */
	if (FUNC2(&ma->mca_addr) ||
	    FUNC0(&ma->mca_addr) < IPV6_ADDR_SCOPE_LINKLOCAL)
		return;

	if (FUNC1(&ma->mca_timer)) {
		FUNC5(&ma->mca_refcnt);
		delay = ma->mca_timer.expires - jiffies;
	}

	if (delay >= resptime)
		delay = FUNC4() % resptime;

	ma->mca_timer.expires = jiffies + delay;
	if (!FUNC3(&ma->mca_timer, jiffies + delay))
		FUNC6(&ma->mca_refcnt);
	ma->mca_flags |= MAF_TIMER_RUNNING;
}