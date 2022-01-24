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
struct ieee80211_local {int started; int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EALREADY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 

int FUNC6(struct ieee80211_local *local)
{
	int ret;

	FUNC1();

	if (FUNC0(local->started))
		return -EALREADY;

	FUNC5(local);
	local->started = true;
	/* allow rx frames */
	FUNC2();
	ret = local->ops->start(&local->hw);
	FUNC4(local, ret);

	if (ret)
		local->started = false;

	return ret;
}