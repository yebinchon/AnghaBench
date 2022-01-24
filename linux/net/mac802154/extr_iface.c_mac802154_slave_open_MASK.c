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
struct ieee802154_sub_if_data {int /*<<< orphan*/  state; struct ieee802154_local* local; } ;
struct ieee802154_local {int /*<<< orphan*/  open_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct ieee802154_sub_if_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  SDATA_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ieee802154_local*) ; 
 int FUNC4 (struct ieee802154_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct ieee802154_sub_if_data *sdata = FUNC1(dev);
	struct ieee802154_local *local = sdata->local;
	int res;

	FUNC0();

	FUNC6(SDATA_STATE_RUNNING, &sdata->state);

	if (!local->open_count) {
		res = FUNC4(sdata);
		if (res)
			goto err;

		res = FUNC3(local);
		if (res)
			goto err;
	}

	local->open_count++;
	FUNC5(dev);
	return 0;
err:
	/* might already be clear but that doesn't matter */
	FUNC2(SDATA_STATE_RUNNING, &sdata->state);

	return res;
}