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
struct sta_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  fast_tx; } ;
struct ieee80211_fast_tx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_fast_tx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ieee80211_fast_tx* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct sta_info *sta)
{
	struct ieee80211_fast_tx *fast_tx;

	FUNC4(&sta->lock);
	fast_tx = FUNC3(sta->fast_tx,
					    FUNC2(&sta->lock));
	FUNC0(sta->fast_tx, NULL);
	FUNC5(&sta->lock);

	if (fast_tx)
		FUNC1(fast_tx, rcu_head);
}