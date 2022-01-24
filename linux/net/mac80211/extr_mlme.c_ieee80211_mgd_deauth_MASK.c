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
struct ieee80211_if_managed {TYPE_6__* associated; TYPE_5__* assoc_data; TYPE_3__* auth_data; } ;
struct TYPE_7__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  local; TYPE_1__ u; } ;
struct cfg80211_deauth_request {int /*<<< orphan*/  reason_code; int /*<<< orphan*/  bssid; int /*<<< orphan*/  local_state_change; } ;
typedef  int /*<<< orphan*/  frame_buf ;
struct TYPE_12__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_11__ {TYPE_4__* bss; } ;
struct TYPE_10__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_9__ {TYPE_2__* bss; } ;
struct TYPE_8__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int IEEE80211_DEAUTH_FRAME_LEN ; 
 int /*<<< orphan*/  IEEE80211_STYPE_DEAUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct ieee80211_sub_if_data *sdata,
			 struct cfg80211_deauth_request *req)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];
	bool tx = !req->local_state_change;

	if (ifmgd->auth_data &&
	    FUNC1(ifmgd->auth_data->bss->bssid, req->bssid)) {
		FUNC8(sdata,
			   "aborting authentication with %pM by local choice (Reason: %u=%s)\n",
			   req->bssid, req->reason_code,
			   FUNC4(req->reason_code));

		FUNC0(sdata->local, sdata, 0);
		FUNC6(sdata, req->bssid, req->bssid,
					       IEEE80211_STYPE_DEAUTH,
					       req->reason_code, tx,
					       frame_buf);
		FUNC3(sdata, false);
		FUNC5(sdata, frame_buf,
					    sizeof(frame_buf), true,
					    req->reason_code);

		return 0;
	}

	if (ifmgd->assoc_data &&
	    FUNC1(ifmgd->assoc_data->bss->bssid, req->bssid)) {
		FUNC8(sdata,
			   "aborting association with %pM by local choice (Reason: %u=%s)\n",
			   req->bssid, req->reason_code,
			   FUNC4(req->reason_code));

		FUNC0(sdata->local, sdata, 0);
		FUNC6(sdata, req->bssid, req->bssid,
					       IEEE80211_STYPE_DEAUTH,
					       req->reason_code, tx,
					       frame_buf);
		FUNC2(sdata, false, true);
		FUNC5(sdata, frame_buf,
					    sizeof(frame_buf), true,
					    req->reason_code);
		return 0;
	}

	if (ifmgd->associated &&
	    FUNC1(ifmgd->associated->bssid, req->bssid)) {
		FUNC8(sdata,
			   "deauthenticating from %pM by local choice (Reason: %u=%s)\n",
			   req->bssid, req->reason_code,
			   FUNC4(req->reason_code));

		FUNC7(sdata, IEEE80211_STYPE_DEAUTH,
				       req->reason_code, tx, frame_buf);
		FUNC5(sdata, frame_buf,
					    sizeof(frame_buf), true,
					    req->reason_code);
		return 0;
	}

	return -ENOTCONN;
}