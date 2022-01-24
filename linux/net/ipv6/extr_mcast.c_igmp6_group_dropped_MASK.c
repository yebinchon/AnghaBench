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
struct net_device {int dummy; } ;
struct ifmcaddr6 {int mca_flags; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_refcnt; int /*<<< orphan*/  mca_timer; TYPE_1__* idev; int /*<<< orphan*/  mca_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dead; struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ; 
 int MAF_LOADED ; 
 int MAF_NOREPORT ; 
 int MAX_ADDR_LEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifmcaddr6*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ifmcaddr6 *mc)
{
	struct net_device *dev = mc->idev->dev;
	char buf[MAX_ADDR_LEN];

	if (FUNC0(&mc->mca_addr) <
	    IPV6_ADDR_SCOPE_LINKLOCAL)
		return;

	FUNC6(&mc->mca_lock);
	if (mc->mca_flags&MAF_LOADED) {
		mc->mca_flags &= ~MAF_LOADED;
		if (FUNC4(&mc->mca_addr, buf, dev, 0) == 0)
			FUNC2(dev, buf);
	}

	FUNC7(&mc->mca_lock);
	if (mc->mca_flags & MAF_NOREPORT)
		return;

	if (!mc->idev->dead)
		FUNC3(mc);

	FUNC6(&mc->mca_lock);
	if (FUNC1(&mc->mca_timer))
		FUNC5(&mc->mca_refcnt);
	FUNC7(&mc->mca_lock);
}