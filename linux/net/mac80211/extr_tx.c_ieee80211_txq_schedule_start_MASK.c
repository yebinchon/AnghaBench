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
typedef  size_t u8 ;
struct ieee80211_local {int /*<<< orphan*/ * active_txq_lock; int /*<<< orphan*/ * schedule_round; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_local* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_hw *hw, u8 ac)
{
	struct ieee80211_local *local = FUNC0(hw);

	FUNC1(&local->active_txq_lock[ac]);
	local->schedule_round[ac]++;
	FUNC2(&local->active_txq_lock[ac]);
}