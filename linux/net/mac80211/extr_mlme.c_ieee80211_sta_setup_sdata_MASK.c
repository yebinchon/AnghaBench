#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ps; } ;
struct ieee80211_if_managed {int p2p_noa_index; int /*<<< orphan*/ * orig_teardown_skb; int /*<<< orphan*/ * teardown_skb; int /*<<< orphan*/  teardown_lock; int /*<<< orphan*/  req_smps; int /*<<< orphan*/  uapsd_max_sp_len; int /*<<< orphan*/  uapsd_queues; int /*<<< orphan*/  powersave; scalar_t__ flags; int /*<<< orphan*/  tx_tspec_wk; int /*<<< orphan*/  chswitch_timer; int /*<<< orphan*/  conn_mon_timer; int /*<<< orphan*/  bcn_mon_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  tdls_peer_del_work; int /*<<< orphan*/  request_smps_work; int /*<<< orphan*/  csa_connection_drop_work; int /*<<< orphan*/  beacon_connection_loss_work; int /*<<< orphan*/  chswitch_work; int /*<<< orphan*/  monitor_work; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_5__* local; TYPE_2__ wdev; TYPE_1__ u; } ;
struct TYPE_9__ {TYPE_3__* wiphy; int /*<<< orphan*/  uapsd_max_sp_len; int /*<<< orphan*/  uapsd_queues; } ;
struct TYPE_10__ {TYPE_4__ hw; } ;
struct TYPE_8__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_SMPS_AUTOMATIC ; 
 int /*<<< orphan*/  IEEE80211_SMPS_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NL80211_FEATURE_DYNAMIC_SMPS ; 
 int /*<<< orphan*/  ieee80211_beacon_connection_loss_work ; 
 int /*<<< orphan*/  ieee80211_chswitch_timer ; 
 int /*<<< orphan*/  ieee80211_chswitch_work ; 
 int /*<<< orphan*/  ieee80211_csa_connection_drop_work ; 
 int /*<<< orphan*/  ieee80211_request_smps_mgd_work ; 
 int /*<<< orphan*/  ieee80211_sta_bcn_mon_timer ; 
 int /*<<< orphan*/  ieee80211_sta_conn_mon_timer ; 
 int /*<<< orphan*/  ieee80211_sta_handle_tspec_ac_params_wk ; 
 int /*<<< orphan*/  ieee80211_sta_monitor_work ; 
 int /*<<< orphan*/  ieee80211_sta_timer ; 
 int /*<<< orphan*/  ieee80211_tdls_peer_del_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_managed *ifmgd;

	ifmgd = &sdata->u.mgd;
	FUNC1(&ifmgd->monitor_work, ieee80211_sta_monitor_work);
	FUNC1(&ifmgd->chswitch_work, ieee80211_chswitch_work);
	FUNC1(&ifmgd->beacon_connection_loss_work,
		  ieee80211_beacon_connection_loss_work);
	FUNC1(&ifmgd->csa_connection_drop_work,
		  ieee80211_csa_connection_drop_work);
	FUNC1(&ifmgd->request_smps_work, ieee80211_request_smps_mgd_work);
	FUNC0(&ifmgd->tdls_peer_del_work,
			  ieee80211_tdls_peer_del_work);
	FUNC3(&ifmgd->timer, ieee80211_sta_timer, 0);
	FUNC3(&ifmgd->bcn_mon_timer, ieee80211_sta_bcn_mon_timer, 0);
	FUNC3(&ifmgd->conn_mon_timer, ieee80211_sta_conn_mon_timer, 0);
	FUNC3(&ifmgd->chswitch_timer, ieee80211_chswitch_timer, 0);
	FUNC0(&ifmgd->tx_tspec_wk,
			  ieee80211_sta_handle_tspec_ac_params_wk);

	ifmgd->flags = 0;
	ifmgd->powersave = sdata->wdev.ps;
	ifmgd->uapsd_queues = sdata->local->hw.uapsd_queues;
	ifmgd->uapsd_max_sp_len = sdata->local->hw.uapsd_max_sp_len;
	ifmgd->p2p_noa_index = -1;

	if (sdata->local->hw.wiphy->features & NL80211_FEATURE_DYNAMIC_SMPS)
		ifmgd->req_smps = IEEE80211_SMPS_AUTOMATIC;
	else
		ifmgd->req_smps = IEEE80211_SMPS_OFF;

	/* Setup TDLS data */
	FUNC2(&ifmgd->teardown_lock);
	ifmgd->teardown_skb = NULL;
	ifmgd->orig_teardown_skb = NULL;
}