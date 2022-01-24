#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int dummy; } ;
struct ieee80211_if_managed {TYPE_2__* auth_data; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__* local; int /*<<< orphan*/  name; TYPE_1__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  sta_mtx; } ;
struct TYPE_5__ {int done; int timeout_started; scalar_t__ timeout; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_AUTH_WAIT_ASSOC ; 
 int /*<<< orphan*/  IEEE80211_STA_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,char*,...) ; 
 struct sta_info* FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct ieee80211_sub_if_data *sdata,
				    const u8 *bssid)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct sta_info *sta;
	bool result = true;

	FUNC4(sdata, "authenticated\n");
	ifmgd->auth_data->done = true;
	ifmgd->auth_data->timeout = jiffies + IEEE80211_AUTH_WAIT_ASSOC;
	ifmgd->auth_data->timeout_started = true;
	FUNC3(sdata, ifmgd->auth_data->timeout);

	/* move station state to auth */
	FUNC1(&sdata->local->sta_mtx);
	sta = FUNC5(sdata, bssid);
	if (!sta) {
		FUNC0(1, "%s: STA %pM not found", sdata->name, bssid);
		result = false;
		goto out;
	}
	if (FUNC6(sta, IEEE80211_STA_AUTH)) {
		FUNC4(sdata, "failed moving %pM to auth\n", bssid);
		result = false;
		goto out;
	}

out:
	FUNC2(&sdata->local->sta_mtx);
	return result;
}