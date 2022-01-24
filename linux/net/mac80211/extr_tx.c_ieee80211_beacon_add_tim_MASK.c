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
struct sk_buff {int dummy; } ;
struct ps_data {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  tim_lock; scalar_t__ tim_in_locked_section; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,struct ps_data*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_sub_if_data *sdata,
				    struct ps_data *ps, struct sk_buff *skb,
				    bool is_template)
{
	struct ieee80211_local *local = sdata->local;

	/*
	 * Not very nice, but we want to allow the driver to call
	 * ieee80211_beacon_get() as a response to the set_tim()
	 * callback. That, however, is already invoked under the
	 * sta_lock to guarantee consistent and race-free update
	 * of the tim bitmap in mac80211 and the driver.
	 */
	if (local->tim_in_locked_section) {
		FUNC0(sdata, ps, skb, is_template);
	} else {
		FUNC1(&local->tim_lock);
		FUNC0(sdata, ps, skb, is_template);
		FUNC2(&local->tim_lock);
	}

	return 0;
}