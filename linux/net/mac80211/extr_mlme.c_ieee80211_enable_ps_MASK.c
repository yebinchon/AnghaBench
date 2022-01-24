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
struct ieee80211_conf {scalar_t__ dynamic_ps_timeout; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct ieee80211_conf conf; } ;
struct ieee80211_local {TYPE_1__ hw; int /*<<< orphan*/  dynamic_ps_timer; scalar_t__ scanning; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CONF_CHANGE_PS ; 
 int /*<<< orphan*/  IEEE80211_CONF_PS ; 
 int /*<<< orphan*/  PS_NULLFUNC_STACK ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  SUPPORTS_DYNAMIC_PS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_local *local,
				struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_conf *conf = &local->hw.conf;

	/*
	 * If we are scanning right now then the parameters will
	 * take effect when scan finishes.
	 */
	if (local->scanning)
		return;

	if (conf->dynamic_ps_timeout > 0 &&
	    !FUNC0(&local->hw, SUPPORTS_DYNAMIC_PS)) {
		FUNC3(&local->dynamic_ps_timer, jiffies +
			  FUNC4(conf->dynamic_ps_timeout));
	} else {
		if (FUNC0(&local->hw, PS_NULLFUNC_STACK))
			FUNC2(local, sdata, true);

		if (FUNC0(&local->hw, PS_NULLFUNC_STACK) &&
		    FUNC0(&local->hw, REPORTS_TX_ACK_STATUS))
			return;

		conf->flags |= IEEE80211_CONF_PS;
		FUNC1(local, IEEE80211_CONF_CHANGE_PS);
	}
}