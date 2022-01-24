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
struct TYPE_6__ {int csa_active; } ;
struct ieee80211_if_managed {int csa_waiting_bcn; int /*<<< orphan*/  associated; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int csa_block_tx; TYPE_3__ vif; TYPE_1__ u; struct ieee80211_local* local; } ;
struct TYPE_5__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  frame_buf ;

/* Variables and functions */
 int IEEE80211_DEAUTH_FRAME_LEN ; 
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_CSA ; 
 int /*<<< orphan*/  IEEE80211_STYPE_DEAUTH ; 
 int /*<<< orphan*/  WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];
	bool tx;

	FUNC6(sdata);
	if (!ifmgd->associated) {
		FUNC7(sdata);
		return;
	}

	tx = !sdata->csa_block_tx;

	/* AP is probably out of range (or not reachable for another reason) so
	 * remove the bss struct for that AP.
	 */
	FUNC0(local->hw.wiphy, ifmgd->associated);

	FUNC2(sdata, IEEE80211_STYPE_DEAUTH,
			       WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY,
			       tx, frame_buf);
	FUNC4(&local->mtx);
	sdata->vif.csa_active = false;
	ifmgd->csa_waiting_bcn = false;
	if (sdata->csa_block_tx) {
		FUNC3(local, sdata,
					  IEEE80211_QUEUE_STOP_REASON_CSA);
		sdata->csa_block_tx = false;
	}
	FUNC5(&local->mtx);

	FUNC1(sdata, frame_buf, sizeof(frame_buf), tx,
				    WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY);

	FUNC7(sdata);
}