#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_if_managed {TYPE_6__* assoc_data; TYPE_4__* associated; } ;
struct TYPE_7__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; TYPE_1__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  reason_code; } ;
struct TYPE_9__ {TYPE_2__ deauth; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  bssid; int /*<<< orphan*/ * sa; TYPE_3__ u; } ;
struct TYPE_12__ {TYPE_5__* bss; } ;
struct TYPE_11__ {int /*<<< orphan*/ * bssid; } ;
struct TYPE_10__ {int /*<<< orphan*/ * bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_sub_if_data *sdata,
				     struct ieee80211_mgmt *mgmt, size_t len)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	u16 reason_code = FUNC7(mgmt->u.deauth.reason_code);

	FUNC8(sdata);

	if (len < 24 + 2)
		return;

	if (!FUNC1(mgmt->bssid, mgmt->sa)) {
		FUNC6(sdata, mgmt->sa, reason_code);
		return;
	}

	if (ifmgd->associated &&
	    FUNC1(mgmt->bssid, ifmgd->associated->bssid)) {
		const u8 *bssid = ifmgd->associated->bssid;

		FUNC9(sdata, "deauthenticated from %pM (Reason: %u=%s)\n",
			   bssid, reason_code,
			   FUNC3(reason_code));

		FUNC5(sdata, 0, 0, false, NULL);

		FUNC4(sdata, (u8 *)mgmt, len, false,
					    reason_code);
		return;
	}

	if (ifmgd->assoc_data &&
	    FUNC1(mgmt->bssid, ifmgd->assoc_data->bss->bssid)) {
		const u8 *bssid = ifmgd->assoc_data->bss->bssid;

		FUNC9(sdata,
			   "deauthenticated from %pM while associating (Reason: %u=%s)\n",
			   bssid, reason_code,
			   FUNC3(reason_code));

		FUNC2(sdata, false, true);

		FUNC0(sdata->dev, (u8 *)mgmt, len);
		return;
	}
}