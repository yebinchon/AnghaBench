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
struct ieee80211_if_managed {int /*<<< orphan*/  timer; int /*<<< orphan*/  teardown_lock; scalar_t__ assoc_req_ies_len; int /*<<< orphan*/ * assoc_req_ies; int /*<<< orphan*/ * orig_teardown_skb; int /*<<< orphan*/ * teardown_skb; scalar_t__ auth_data; TYPE_2__* assoc_data; int /*<<< orphan*/  tdls_peer_del_work; int /*<<< orphan*/  chswitch_work; int /*<<< orphan*/  csa_connection_drop_work; int /*<<< orphan*/  request_smps_work; int /*<<< orphan*/  beacon_connection_loss_work; int /*<<< orphan*/  monitor_work; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; TYPE_1__ u; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_4__ {struct cfg80211_bss* bss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

	/*
	 * Make sure some work items will not run after this,
	 * they will not do anything but might not have been
	 * cancelled when disconnecting.
	 */
	FUNC1(&ifmgd->monitor_work);
	FUNC1(&ifmgd->beacon_connection_loss_work);
	FUNC1(&ifmgd->request_smps_work);
	FUNC1(&ifmgd->csa_connection_drop_work);
	FUNC1(&ifmgd->chswitch_work);
	FUNC0(&ifmgd->tdls_peer_del_work);

	FUNC8(sdata);
	if (ifmgd->assoc_data) {
		struct cfg80211_bss *bss = ifmgd->assoc_data->bss;
		FUNC4(sdata, false, false);
		FUNC2(sdata->dev, bss);
	}
	if (ifmgd->auth_data)
		FUNC5(sdata, false);
	FUNC10(&ifmgd->teardown_lock);
	if (ifmgd->teardown_skb) {
		FUNC7(ifmgd->teardown_skb);
		ifmgd->teardown_skb = NULL;
		ifmgd->orig_teardown_skb = NULL;
	}
	FUNC6(ifmgd->assoc_req_ies);
	ifmgd->assoc_req_ies = NULL;
	ifmgd->assoc_req_ies_len = 0;
	FUNC11(&ifmgd->teardown_lock);
	FUNC3(&ifmgd->timer);
	FUNC9(sdata);
}