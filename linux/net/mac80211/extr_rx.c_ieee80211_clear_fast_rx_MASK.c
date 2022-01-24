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
struct sta_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  fast_rx; } ;
struct ieee80211_fast_rx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_fast_rx*,int /*<<< orphan*/ ) ; 
 struct ieee80211_fast_rx* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct sta_info *sta)
{
	struct ieee80211_fast_rx *old;

	FUNC3(&sta->lock);
	old = FUNC2(sta->fast_rx, true);
	FUNC0(sta->fast_rx, NULL);
	FUNC4(&sta->lock);

	if (old)
		FUNC1(old, rcu_head);
}