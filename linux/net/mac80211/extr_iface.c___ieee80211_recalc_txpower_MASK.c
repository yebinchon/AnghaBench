#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int txpower; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  local; TYPE_2__ vif; int /*<<< orphan*/  ap_power_level; int /*<<< orphan*/  user_power_level; } ;
struct ieee80211_chanctx_conf {int /*<<< orphan*/  def; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_UNSET_POWER_LEVEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx_conf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

bool FUNC6(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_chanctx_conf *chanctx_conf;
	int power;

	FUNC4();
	chanctx_conf = FUNC3(sdata->vif.chanctx_conf);
	if (!chanctx_conf) {
		FUNC5();
		return false;
	}

	power = FUNC0(&chanctx_conf->def);
	FUNC5();

	if (sdata->user_power_level != IEEE80211_UNSET_POWER_LEVEL)
		power = FUNC2(power, sdata->user_power_level);

	if (sdata->ap_power_level != IEEE80211_UNSET_POWER_LEVEL)
		power = FUNC2(power, sdata->ap_power_level);

	if (power != sdata->vif.bss_conf.txpower) {
		sdata->vif.bss_conf.txpower = power;
		FUNC1(sdata->local, 0);
		return true;
	}

	return false;
}