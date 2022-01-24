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
typedef  int /*<<< orphan*/  u8 ;
struct station_parameters {int listen_interval; int support_p2p_ps; int opmode_notif_used; scalar_t__ vlan; void* airtime_weight; void* opmode_notif; int /*<<< orphan*/  local_pm; int /*<<< orphan*/  sta_modify_mask; void* peer_aid; void* plink_state; void* plink_action; void* ext_capab_len; void* ext_capab; void* capability; void* supported_rates_len; void* supported_rates; void* aid; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_4__ {int iftype; } ;
struct TYPE_3__ {int /*<<< orphan*/  change_station; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t NL80211_ATTR_AIRTIME_WEIGHT ; 
 size_t NL80211_ATTR_LOCAL_MESH_POWER_MODE ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_MESH_PEER_AID ; 
 size_t NL80211_ATTR_OPMODE_NOTIF ; 
 size_t NL80211_ATTR_STA_AID ; 
 size_t NL80211_ATTR_STA_CAPABILITY ; 
 size_t NL80211_ATTR_STA_EXT_CAPABILITY ; 
 size_t NL80211_ATTR_STA_LISTEN_INTERVAL ; 
 size_t NL80211_ATTR_STA_PLINK_ACTION ; 
 size_t NL80211_ATTR_STA_PLINK_STATE ; 
 size_t NL80211_ATTR_STA_SUPPORTED_RATES ; 
 size_t NL80211_ATTR_STA_SUPPORT_P2P_PS ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_AIRTIME_FAIRNESS ; 
#define  NL80211_IFTYPE_ADHOC 134 
#define  NL80211_IFTYPE_AP 133 
#define  NL80211_IFTYPE_AP_VLAN 132 
#define  NL80211_IFTYPE_MESH_POINT 131 
#define  NL80211_IFTYPE_P2P_CLIENT 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  STATION_PARAM_APPLY_CAPABILITY ; 
 int /*<<< orphan*/  STATION_PARAM_APPLY_PLINK_STATE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct genl_info*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct station_parameters*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct genl_info*,struct station_parameters*) ; 
 int FUNC6 (struct genl_info*,struct station_parameters*) ; 
 void* FUNC7 (scalar_t__) ; 
 void* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 void* FUNC10 (scalar_t__) ; 
 void* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (struct genl_info*,int,struct station_parameters*) ; 
 int FUNC13 (struct net_device*,struct net_device*,int /*<<< orphan*/ *,struct station_parameters*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct station_parameters params;
	u8 *mac_addr;
	int err;

	FUNC4(&params, 0, sizeof(params));

	if (!rdev->ops->change_station)
		return -EOPNOTSUPP;

	/*
	 * AID and listen_interval properties can be set only for unassociated
	 * station. Include these parameters here and will check them in
	 * cfg80211_check_station_change().
	 */
	if (info->attrs[NL80211_ATTR_STA_AID])
		params.aid = FUNC8(info->attrs[NL80211_ATTR_STA_AID]);

	if (info->attrs[NL80211_ATTR_STA_LISTEN_INTERVAL])
		params.listen_interval =
		     FUNC8(info->attrs[NL80211_ATTR_STA_LISTEN_INTERVAL]);
	else
		params.listen_interval = -1;

	if (info->attrs[NL80211_ATTR_STA_SUPPORT_P2P_PS])
		params.support_p2p_ps =
			FUNC10(info->attrs[NL80211_ATTR_STA_SUPPORT_P2P_PS]);
	else
		params.support_p2p_ps = -1;

	if (!info->attrs[NL80211_ATTR_MAC])
		return -EINVAL;

	mac_addr = FUNC7(info->attrs[NL80211_ATTR_MAC]);

	if (info->attrs[NL80211_ATTR_STA_SUPPORTED_RATES]) {
		params.supported_rates =
			FUNC7(info->attrs[NL80211_ATTR_STA_SUPPORTED_RATES]);
		params.supported_rates_len =
			FUNC11(info->attrs[NL80211_ATTR_STA_SUPPORTED_RATES]);
	}

	if (info->attrs[NL80211_ATTR_STA_CAPABILITY]) {
		params.capability =
			FUNC8(info->attrs[NL80211_ATTR_STA_CAPABILITY]);
		params.sta_modify_mask |= STATION_PARAM_APPLY_CAPABILITY;
	}

	if (info->attrs[NL80211_ATTR_STA_EXT_CAPABILITY]) {
		params.ext_capab =
			FUNC7(info->attrs[NL80211_ATTR_STA_EXT_CAPABILITY]);
		params.ext_capab_len =
			FUNC11(info->attrs[NL80211_ATTR_STA_EXT_CAPABILITY]);
	}

	if (FUNC12(info, dev->ieee80211_ptr->iftype, &params))
		return -EINVAL;

	if (info->attrs[NL80211_ATTR_STA_PLINK_ACTION])
		params.plink_action =
			FUNC10(info->attrs[NL80211_ATTR_STA_PLINK_ACTION]);

	if (info->attrs[NL80211_ATTR_STA_PLINK_STATE]) {
		params.plink_state =
			FUNC10(info->attrs[NL80211_ATTR_STA_PLINK_STATE]);
		if (info->attrs[NL80211_ATTR_MESH_PEER_AID])
			params.peer_aid = FUNC8(
				info->attrs[NL80211_ATTR_MESH_PEER_AID]);
		params.sta_modify_mask |= STATION_PARAM_APPLY_PLINK_STATE;
	}

	if (info->attrs[NL80211_ATTR_LOCAL_MESH_POWER_MODE])
		params.local_pm = FUNC9(
			info->attrs[NL80211_ATTR_LOCAL_MESH_POWER_MODE]);

	if (info->attrs[NL80211_ATTR_OPMODE_NOTIF]) {
		params.opmode_notif_used = true;
		params.opmode_notif =
			FUNC10(info->attrs[NL80211_ATTR_OPMODE_NOTIF]);
	}

	if (info->attrs[NL80211_ATTR_AIRTIME_WEIGHT])
		params.airtime_weight =
			FUNC8(info->attrs[NL80211_ATTR_AIRTIME_WEIGHT]);

	if (params.airtime_weight &&
	    !FUNC14(&rdev->wiphy,
				     NL80211_EXT_FEATURE_AIRTIME_FAIRNESS))
		return -EOPNOTSUPP;

	err = FUNC5(info, &params);
	if (err)
		return err;

	/* Include parameters for TDLS peer (will check later) */
	err = FUNC6(info, &params);
	if (err)
		return err;

	params.vlan = FUNC3(info, rdev);
	if (FUNC0(params.vlan))
		return FUNC1(params.vlan);

	switch (dev->ieee80211_ptr->iftype) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_AP_VLAN:
	case NL80211_IFTYPE_P2P_GO:
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_ADHOC:
	case NL80211_IFTYPE_MESH_POINT:
		break;
	default:
		err = -EOPNOTSUPP;
		goto out_put_vlan;
	}

	/* driver will call cfg80211_check_station_change() */
	err = FUNC13(rdev, dev, mac_addr, &params);

 out_put_vlan:
	if (params.vlan)
		FUNC2(params.vlan);

	return err;
}