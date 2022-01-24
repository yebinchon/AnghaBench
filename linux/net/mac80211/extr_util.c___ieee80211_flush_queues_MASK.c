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
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_FLUSH ; 
 int /*<<< orphan*/  QUEUE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*,struct ieee80211_sub_if_data*,unsigned int,int) ; 
 unsigned int FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct ieee80211_local *local,
			      struct ieee80211_sub_if_data *sdata,
			      unsigned int queues, bool drop)
{
	if (!local->ops->flush)
		return;

	/*
	 * If no queue was set, or if the HW doesn't support
	 * IEEE80211_HW_QUEUE_CONTROL - flush all queues
	 */
	if (!queues || !FUNC2(&local->hw, QUEUE_CONTROL))
		queues = FUNC1(local, sdata);

	FUNC3(&local->hw, queues,
					IEEE80211_QUEUE_STOP_REASON_FLUSH,
					false);

	FUNC0(local, sdata, queues, drop);

	FUNC4(&local->hw, queues,
					IEEE80211_QUEUE_STOP_REASON_FLUSH,
					false);
}