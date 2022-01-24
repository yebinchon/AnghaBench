#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_if_managed {TYPE_2__* associated; } ;
struct TYPE_5__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct TYPE_7__ {int /*<<< orphan*/  reason_code; } ;
struct TYPE_8__ {TYPE_3__ disassoc; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  sa; int /*<<< orphan*/  bssid; TYPE_4__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_sub_if_data *sdata,
				       struct ieee80211_mgmt *mgmt, size_t len)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	u16 reason_code;

	FUNC6(sdata);

	if (len < 24 + 2)
		return;

	if (!ifmgd->associated ||
	    !FUNC0(mgmt->bssid, ifmgd->associated->bssid))
		return;

	reason_code = FUNC5(mgmt->u.disassoc.reason_code);

	if (!FUNC0(mgmt->bssid, mgmt->sa)) {
		FUNC4(sdata, mgmt->sa, reason_code);
		return;
	}

	FUNC7(sdata, "disassociated from %pM (Reason: %u=%s)\n",
		   mgmt->sa, reason_code,
		   FUNC1(reason_code));

	FUNC3(sdata, 0, 0, false, NULL);

	FUNC2(sdata, (u8 *)mgmt, len, false, reason_code);
}