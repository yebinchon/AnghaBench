#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct TYPE_10__ {TYPE_1__* chan; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ ssid_len; int /*<<< orphan*/  conn_owner_nlportid; int /*<<< orphan*/  ssid; TYPE_4__ chandef; void* beacon_interval; TYPE_4__ preset_chandef; } ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int features; int /*<<< orphan*/ * bands; } ;
struct net_device {TYPE_3__ wiphy; struct wireless_dev* ieee80211_ptr; TYPE_2__* ops; } ;
struct genl_info {int /*<<< orphan*/  snd_portid; scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_3__ wiphy; struct wireless_dev* ieee80211_ptr; TYPE_2__* ops; } ;
struct cfg80211_ap_settings {scalar_t__ ssid_len; int privacy; scalar_t__ p2p_ctwindow; int smps_mode; int /*<<< orphan*/  acl; int /*<<< orphan*/  ssid; TYPE_4__ chandef; void* beacon_interval; int /*<<< orphan*/  flags; int /*<<< orphan*/  he_obss_pd; void* twt_responder; void* pbss; int /*<<< orphan*/  beacon_rate; void* p2p_opp_ps; int /*<<< orphan*/  inactivity_timeout; int /*<<< orphan*/  crypto; void* auth_type; void* hidden_ssid; void* dtim_period; int /*<<< orphan*/  beacon; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_8__ {int /*<<< orphan*/  start_ap; } ;
struct TYPE_7__ {int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_SETTINGS_EXTERNAL_AUTH_SUPPORT ; 
 int EALREADY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ IEEE80211_MAX_SSID_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NL80211_ATTR_ACL_POLICY ; 
 size_t NL80211_ATTR_AUTH_TYPE ; 
 size_t NL80211_ATTR_BEACON_HEAD ; 
 size_t NL80211_ATTR_BEACON_INTERVAL ; 
 size_t NL80211_ATTR_DTIM_PERIOD ; 
 size_t NL80211_ATTR_EXTERNAL_AUTH_SUPPORT ; 
 size_t NL80211_ATTR_HE_OBSS_PD ; 
 size_t NL80211_ATTR_HIDDEN_SSID ; 
 size_t NL80211_ATTR_INACTIVITY_TIMEOUT ; 
 size_t NL80211_ATTR_P2P_CTWINDOW ; 
 size_t NL80211_ATTR_P2P_OPPPS ; 
 size_t NL80211_ATTR_PBSS ; 
 size_t NL80211_ATTR_PRIVACY ; 
 size_t NL80211_ATTR_SMPS_MODE ; 
 size_t NL80211_ATTR_SOCKET_OWNER ; 
 size_t NL80211_ATTR_SSID ; 
 size_t NL80211_ATTR_TWT_RESPONDER ; 
 size_t NL80211_ATTR_TX_RATES ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
 void* NL80211_AUTHTYPE_AUTOMATIC ; 
 size_t NL80211_BAND_60GHZ ; 
 int /*<<< orphan*/  NL80211_CMD_START_AP ; 
 int NL80211_FEATURE_DYNAMIC_SMPS ; 
 int NL80211_FEATURE_INACTIVITY_TIMER ; 
 int NL80211_FEATURE_P2P_GO_CTWIN ; 
 int NL80211_FEATURE_P2P_GO_OPPPS ; 
 int NL80211_FEATURE_STATIC_SMPS ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int /*<<< orphan*/  NL80211_MAX_NR_CIPHER_SUITES ; 
#define  NL80211_SMPS_DYNAMIC 130 
#define  NL80211_SMPS_OFF 129 
#define  NL80211_SMPS_STATIC 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,scalar_t__) ; 
 int FUNC3 (struct net_device*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg80211_ap_settings*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_ap_settings*) ; 
 int FUNC8 (struct net_device*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct cfg80211_ap_settings*) ; 
 int FUNC10 (struct net_device*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct net_device*,struct genl_info*,TYPE_4__*) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct genl_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 void* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 void* FUNC18 (scalar_t__) ; 
 void* FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,struct genl_info*) ; 
 int FUNC22 (struct net_device*,struct net_device*,struct cfg80211_ap_settings*) ; 
 int FUNC23 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC26(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_ap_settings params;
	int err;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
		return -EOPNOTSUPP;

	if (!rdev->ops->start_ap)
		return -EOPNOTSUPP;

	if (wdev->beacon_interval)
		return -EALREADY;

	FUNC6(&params, 0, sizeof(params));

	/* these are required for START_AP */
	if (!info->attrs[NL80211_ATTR_BEACON_INTERVAL] ||
	    !info->attrs[NL80211_ATTR_DTIM_PERIOD] ||
	    !info->attrs[NL80211_ATTR_BEACON_HEAD])
		return -EINVAL;

	err = FUNC10(rdev, info->attrs, &params.beacon);
	if (err)
		return err;

	params.beacon_interval =
		FUNC18(info->attrs[NL80211_ATTR_BEACON_INTERVAL]);
	params.dtim_period =
		FUNC18(info->attrs[NL80211_ATTR_DTIM_PERIOD]);

	err = FUNC3(rdev, dev->ieee80211_ptr->iftype,
					   params.beacon_interval);
	if (err)
		return err;

	/*
	 * In theory, some of these attributes should be required here
	 * but since they were not used when the command was originally
	 * added, keep them optional for old user space programs to let
	 * them continue to work with drivers that do not need the
	 * additional information -- drivers must check!
	 */
	if (info->attrs[NL80211_ATTR_SSID]) {
		params.ssid = FUNC15(info->attrs[NL80211_ATTR_SSID]);
		params.ssid_len =
			FUNC20(info->attrs[NL80211_ATTR_SSID]);
		if (params.ssid_len == 0 ||
		    params.ssid_len > IEEE80211_MAX_SSID_LEN)
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_HIDDEN_SSID])
		params.hidden_ssid = FUNC18(
			info->attrs[NL80211_ATTR_HIDDEN_SSID]);

	params.privacy = !!info->attrs[NL80211_ATTR_PRIVACY];

	if (info->attrs[NL80211_ATTR_AUTH_TYPE]) {
		params.auth_type = FUNC18(
			info->attrs[NL80211_ATTR_AUTH_TYPE]);
		if (!FUNC14(rdev, params.auth_type,
					     NL80211_CMD_START_AP))
			return -EINVAL;
	} else
		params.auth_type = NL80211_AUTHTYPE_AUTOMATIC;

	err = FUNC8(rdev, info, &params.crypto,
				      NL80211_MAX_NR_CIPHER_SUITES);
	if (err)
		return err;

	if (info->attrs[NL80211_ATTR_INACTIVITY_TIMEOUT]) {
		if (!(rdev->wiphy.features & NL80211_FEATURE_INACTIVITY_TIMER))
			return -EOPNOTSUPP;
		params.inactivity_timeout = FUNC17(
			info->attrs[NL80211_ATTR_INACTIVITY_TIMEOUT]);
	}

	if (info->attrs[NL80211_ATTR_P2P_CTWINDOW]) {
		if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
			return -EINVAL;
		params.p2p_ctwindow =
			FUNC19(info->attrs[NL80211_ATTR_P2P_CTWINDOW]);
		if (params.p2p_ctwindow != 0 &&
		    !(rdev->wiphy.features & NL80211_FEATURE_P2P_GO_CTWIN))
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_P2P_OPPPS]) {
		u8 tmp;

		if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
			return -EINVAL;
		tmp = FUNC19(info->attrs[NL80211_ATTR_P2P_OPPPS]);
		params.p2p_opp_ps = tmp;
		if (params.p2p_opp_ps != 0 &&
		    !(rdev->wiphy.features & NL80211_FEATURE_P2P_GO_OPPPS))
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_WIPHY_FREQ]) {
		err = FUNC11(rdev, info, &params.chandef);
		if (err)
			return err;
	} else if (wdev->preset_chandef.chan) {
		params.chandef = wdev->preset_chandef;
	} else if (!FUNC9(rdev, &params))
		return -EINVAL;

	if (!FUNC2(&rdev->wiphy, &params.chandef,
					   wdev->iftype))
		return -EINVAL;

	if (info->attrs[NL80211_ATTR_TX_RATES]) {
		err = FUNC13(info, &params.beacon_rate);
		if (err)
			return err;

		err = FUNC23(rdev, params.chandef.chan->band,
					      &params.beacon_rate);
		if (err)
			return err;
	}

	if (info->attrs[NL80211_ATTR_SMPS_MODE]) {
		params.smps_mode =
			FUNC19(info->attrs[NL80211_ATTR_SMPS_MODE]);
		switch (params.smps_mode) {
		case NL80211_SMPS_OFF:
			break;
		case NL80211_SMPS_STATIC:
			if (!(rdev->wiphy.features &
			      NL80211_FEATURE_STATIC_SMPS))
				return -EINVAL;
			break;
		case NL80211_SMPS_DYNAMIC:
			if (!(rdev->wiphy.features &
			      NL80211_FEATURE_DYNAMIC_SMPS))
				return -EINVAL;
			break;
		default:
			return -EINVAL;
		}
	} else {
		params.smps_mode = NL80211_SMPS_OFF;
	}

	params.pbss = FUNC16(info->attrs[NL80211_ATTR_PBSS]);
	if (params.pbss && !rdev->wiphy.bands[NL80211_BAND_60GHZ])
		return -EOPNOTSUPP;

	if (info->attrs[NL80211_ATTR_ACL_POLICY]) {
		params.acl = FUNC21(&rdev->wiphy, info);
		if (FUNC0(params.acl))
			return FUNC1(params.acl);
	}

	params.twt_responder =
		    FUNC16(info->attrs[NL80211_ATTR_TWT_RESPONDER]);

	if (info->attrs[NL80211_ATTR_HE_OBSS_PD]) {
		err = FUNC12(
					info->attrs[NL80211_ATTR_HE_OBSS_PD],
					&params.he_obss_pd);
		if (err)
			return err;
	}

	FUNC7(&params);

	if (info->attrs[NL80211_ATTR_EXTERNAL_AUTH_SUPPORT])
		params.flags |= AP_SETTINGS_EXTERNAL_AUTH_SUPPORT;

	FUNC24(wdev);
	err = FUNC22(rdev, dev, &params);
	if (!err) {
		wdev->preset_chandef = params.chandef;
		wdev->beacon_interval = params.beacon_interval;
		wdev->chandef = params.chandef;
		wdev->ssid_len = params.ssid_len;
		FUNC5(wdev->ssid, params.ssid, wdev->ssid_len);

		if (info->attrs[NL80211_ATTR_SOCKET_OWNER])
			wdev->conn_owner_nlportid = info->snd_portid;
	}
	FUNC25(wdev);

	FUNC4(params.acl);

	return err;
}