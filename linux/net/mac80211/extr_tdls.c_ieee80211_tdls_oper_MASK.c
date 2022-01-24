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
struct wiphy {int flags; } ;
struct sta_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  request_smps_work; int /*<<< orphan*/  tdls_peer; int /*<<< orphan*/  tdls_peer_del_work; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  csa_active; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; struct ieee80211_local* local; TYPE_1__ vif; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  hw; int /*<<< orphan*/  sta_mtx; int /*<<< orphan*/  tx_pending_tasklet; } ;
typedef  enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOLINK ; 
 int ENOTSUPP ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
#define  NL80211_TDLS_DISABLE_LINK 132 
#define  NL80211_TDLS_DISCOVERY_REQ 131 
#define  NL80211_TDLS_ENABLE_LINK 130 
#define  NL80211_TDLS_SETUP 129 
#define  NL80211_TDLS_TEARDOWN 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int WIPHY_FLAG_SUPPORTS_TDLS ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_PEER_AUTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 struct sta_info* FUNC16 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_sub_if_data*,char*,...) ; 

int FUNC19(struct wiphy *wiphy, struct net_device *dev,
			const u8 *peer, enum nl80211_tdls_operation oper)
{
	struct sta_info *sta;
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	int ret;

	if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS))
		return -ENOTSUPP;

	if (sdata->vif.type != NL80211_IFTYPE_STATION)
		return -EINVAL;

	switch (oper) {
	case NL80211_TDLS_ENABLE_LINK:
	case NL80211_TDLS_DISABLE_LINK:
		break;
	case NL80211_TDLS_TEARDOWN:
	case NL80211_TDLS_SETUP:
	case NL80211_TDLS_DISCOVERY_REQ:
		/* We don't support in-driver setup/teardown/discovery */
		return -ENOTSUPP;
	}

	/* protect possible bss_conf changes and avoid concurrency in
	 * ieee80211_bss_info_change_notify()
	 */
	FUNC12(sdata);
	FUNC10(&local->mtx);
	FUNC18(sdata, "TDLS oper %d peer %pM\n", oper, peer);

	switch (oper) {
	case NL80211_TDLS_ENABLE_LINK:
		if (sdata->vif.csa_active) {
			FUNC18(sdata, "TDLS: disallow link during CSA\n");
			ret = -EBUSY;
			break;
		}

		FUNC10(&local->sta_mtx);
		sta = FUNC16(sdata, peer);
		if (!sta) {
			FUNC11(&local->sta_mtx);
			ret = -ENOLINK;
			break;
		}

		FUNC5(sdata, sta);
		FUNC6(sdata, sta);

		FUNC14(sta, WLAN_STA_TDLS_PEER_AUTH);
		FUNC11(&local->sta_mtx);

		FUNC1(FUNC9(sdata->u.mgd.tdls_peer) ||
			     !FUNC4(sdata->u.mgd.tdls_peer, peer));
		ret = 0;
		break;
	case NL80211_TDLS_DISABLE_LINK:
		/*
		 * The teardown message in ieee80211_tdls_mgmt_teardown() was
		 * created while the queues were stopped, so it might still be
		 * pending. Before flushing the queues we need to be sure the
		 * message is handled by the tasklet handling pending messages,
		 * otherwise we might start destroying the station before
		 * sending the teardown packet.
		 * Note that this only forces the tasklet to flush pendings -
		 * not to stop the tasklet from rescheduling itself.
		 */
		FUNC17(&local->tx_pending_tasklet);
		/* flush a potentially queued teardown packet */
		FUNC7(local, sdata, false);

		ret = FUNC15(sdata, peer);

		FUNC10(&local->sta_mtx);
		FUNC6(sdata, NULL);
		FUNC11(&local->sta_mtx);

		FUNC5(sdata, NULL);
		break;
	default:
		ret = -ENOTSUPP;
		break;
	}

	if (ret == 0 && FUNC4(sdata->u.mgd.tdls_peer, peer)) {
		FUNC2(&sdata->u.mgd.tdls_peer_del_work);
		FUNC3(sdata->u.mgd.tdls_peer);
	}

	if (ret == 0)
		FUNC8(&sdata->local->hw,
				     &sdata->u.mgd.request_smps_work);

	FUNC11(&local->mtx);
	FUNC13(sdata);
	return ret;
}