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
struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int dummy; } ;
struct iw_spy_data {int spy_number; int /*<<< orphan*/  spy_stat; int /*<<< orphan*/ * spy_address; } ;
struct iw_request_info {int dummy; } ;
struct iw_quality {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IW_MAX_SPY ; 
 struct iw_spy_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct net_device *	dev,
		       struct iw_request_info *	info,
		       union iwreq_data *	wrqu,
		       char *			extra)
{
	struct iw_spy_data *	spydata = FUNC0(dev);
	struct sockaddr *	address = (struct sockaddr *) extra;

	/* Make sure driver is not buggy or using the old API */
	if (!spydata)
		return -EOPNOTSUPP;

	/* Disable spy collection while we copy the addresses.
	 * While we copy addresses, any call to wireless_spy_update()
	 * will NOP. This is OK, as anyway the addresses are changing. */
	spydata->spy_number = 0;

	/* We want to operate without locking, because wireless_spy_update()
	 * most likely will happen in the interrupt handler, and therefore
	 * have its own locking constraints and needs performance.
	 * The rtnl_lock() make sure we don't race with the other iw_handlers.
	 * This make sure wireless_spy_update() "see" that the spy list
	 * is temporarily disabled. */
	FUNC3();

	/* Are there are addresses to copy? */
	if (wrqu->data.length > 0) {
		int i;

		/* Copy addresses */
		for (i = 0; i < wrqu->data.length; i++)
			FUNC1(spydata->spy_address[i], address[i].sa_data,
			       ETH_ALEN);
		/* Reset stats */
		FUNC2(spydata->spy_stat, 0,
		       sizeof(struct iw_quality) * IW_MAX_SPY);
	}

	/* Make sure above is updated before re-enabling */
	FUNC3();

	/* Enable addresses */
	spydata->spy_number = wrqu->data.length;

	return 0;
}