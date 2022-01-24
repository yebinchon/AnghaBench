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
struct ieee80211_local {int /*<<< orphan*/  queue_stop_reason_lock; int /*<<< orphan*/ * queue_stop_reasons; } ;
struct ieee80211_hw {int queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_DRIVER ; 
 scalar_t__ FUNC0 (int) ; 
 struct ieee80211_local* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct ieee80211_hw *hw, int queue)
{
	struct ieee80211_local *local = FUNC1(hw);
	unsigned long flags;
	int ret;

	if (FUNC0(queue >= hw->queues))
		return true;

	FUNC2(&local->queue_stop_reason_lock, flags);
	ret = FUNC4(IEEE80211_QUEUE_STOP_REASON_DRIVER,
		       &local->queue_stop_reasons[queue]);
	FUNC3(&local->queue_stop_reason_lock, flags);
	return ret;
}