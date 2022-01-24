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
struct timer_list {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  dynamic_ps_enable_work; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  dynamic_ps_timer ; 
 struct ieee80211_local* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ieee80211_local* local ; 

void FUNC2(struct timer_list *t)
{
	struct ieee80211_local *local = FUNC0(local, t, dynamic_ps_timer);

	FUNC1(&local->hw, &local->dynamic_ps_enable_work);
}