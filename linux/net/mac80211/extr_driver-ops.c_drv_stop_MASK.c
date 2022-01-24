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
struct ieee80211_local {int started; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_local*) ; 

void FUNC8(struct ieee80211_local *local)
{
	FUNC2();

	if (FUNC0(!local->started))
		return;

	FUNC7(local);
	local->ops->stop(&local->hw);
	FUNC6(local);

	/* sync away all work on the tasklet before clearing started */
	FUNC4(&local->tasklet);
	FUNC5(&local->tasklet);

	FUNC1();

	local->started = false;
}