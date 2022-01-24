#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int features; } ;
struct net_device {TYPE_3__* ieee80211_ptr; TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct ieee80211_channel {int dummy; } ;
struct genl_info {scalar_t__ snd_portid; scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_3__* ieee80211_ptr; TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct cfg80211_assoc_request {int use_mfp; int /*<<< orphan*/  crypto; int /*<<< orphan*/  const* fils_nonces; void* fils_kek_len; int /*<<< orphan*/  const* fils_kek; int /*<<< orphan*/  flags; int /*<<< orphan*/  vht_capa; int /*<<< orphan*/  vht_capa_mask; int /*<<< orphan*/  ht_capa; int /*<<< orphan*/  ht_capa_mask; int /*<<< orphan*/  const* prev_bssid; void* ie_len; int /*<<< orphan*/  const* ie; } ;
typedef  enum nl80211_mfp { ____Placeholder_nl80211_mfp } nl80211_mfp ;
struct TYPE_8__ {scalar_t__ conn_owner_nlportid; scalar_t__ iftype; int /*<<< orphan*/ * disconnect_bssid; } ;
struct TYPE_6__ {int /*<<< orphan*/  assoc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_REQ_DISABLE_HT ; 
 int /*<<< orphan*/  ASSOC_REQ_DISABLE_VHT ; 
 int /*<<< orphan*/  ASSOC_REQ_USE_RRM ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int ETH_ALEN ; 
 size_t NL80211_ATTR_DISABLE_HT ; 
 size_t NL80211_ATTR_DISABLE_VHT ; 
 size_t NL80211_ATTR_FILS_KEK ; 
 size_t NL80211_ATTR_FILS_NONCES ; 
 size_t NL80211_ATTR_HT_CAPABILITY ; 
 size_t NL80211_ATTR_HT_CAPABILITY_MASK ; 
 size_t NL80211_ATTR_IE ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_PREV_BSSID ; 
 size_t NL80211_ATTR_SOCKET_OWNER ; 
 size_t NL80211_ATTR_SSID ; 
 size_t NL80211_ATTR_USE_MFP ; 
 size_t NL80211_ATTR_USE_RRM ; 
 size_t NL80211_ATTR_VHT_CAPABILITY ; 
 size_t NL80211_ATTR_VHT_CAPABILITY_MASK ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_RRM ; 
 int NL80211_FEATURE_DS_PARAM_SET_IE_IN_PROBES ; 
 int NL80211_FEATURE_QUIET ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int NL80211_MFP_NO ; 
 int NL80211_MFP_REQUIRED ; 
 int FUNC0 (struct net_device*,struct net_device*,struct ieee80211_channel*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,struct cfg80211_assoc_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (struct net_device*,struct genl_info*,int /*<<< orphan*/ *,int) ; 
 struct ieee80211_channel* FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  const* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct ieee80211_channel *chan;
	struct cfg80211_assoc_request req = {};
	const u8 *bssid, *ssid;
	int err, ssid_len = 0;

	if (dev->ieee80211_ptr->conn_owner_nlportid &&
	    dev->ieee80211_ptr->conn_owner_nlportid != info->snd_portid)
		return -EPERM;

	if (!info->attrs[NL80211_ATTR_MAC] ||
	    !info->attrs[NL80211_ATTR_SSID] ||
	    !info->attrs[NL80211_ATTR_WIPHY_FREQ])
		return -EINVAL;

	if (!rdev->ops->assoc)
		return -EOPNOTSUPP;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_STATION &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_CLIENT)
		return -EOPNOTSUPP;

	bssid = FUNC4(info->attrs[NL80211_ATTR_MAC]);

	chan = FUNC3(&rdev->wiphy,
				      info->attrs[NL80211_ATTR_WIPHY_FREQ]);
	if (!chan)
		return -EINVAL;

	ssid = FUNC4(info->attrs[NL80211_ATTR_SSID]);
	ssid_len = FUNC7(info->attrs[NL80211_ATTR_SSID]);

	if (info->attrs[NL80211_ATTR_IE]) {
		req.ie = FUNC4(info->attrs[NL80211_ATTR_IE]);
		req.ie_len = FUNC7(info->attrs[NL80211_ATTR_IE]);
	}

	if (info->attrs[NL80211_ATTR_USE_MFP]) {
		enum nl80211_mfp mfp =
			FUNC6(info->attrs[NL80211_ATTR_USE_MFP]);
		if (mfp == NL80211_MFP_REQUIRED)
			req.use_mfp = true;
		else if (mfp != NL80211_MFP_NO)
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_PREV_BSSID])
		req.prev_bssid = FUNC4(info->attrs[NL80211_ATTR_PREV_BSSID]);

	if (FUNC5(info->attrs[NL80211_ATTR_DISABLE_HT]))
		req.flags |= ASSOC_REQ_DISABLE_HT;

	if (info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK])
		FUNC1(&req.ht_capa_mask,
		       FUNC4(info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK]),
		       sizeof(req.ht_capa_mask));

	if (info->attrs[NL80211_ATTR_HT_CAPABILITY]) {
		if (!info->attrs[NL80211_ATTR_HT_CAPABILITY_MASK])
			return -EINVAL;
		FUNC1(&req.ht_capa,
		       FUNC4(info->attrs[NL80211_ATTR_HT_CAPABILITY]),
		       sizeof(req.ht_capa));
	}

	if (FUNC5(info->attrs[NL80211_ATTR_DISABLE_VHT]))
		req.flags |= ASSOC_REQ_DISABLE_VHT;

	if (info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK])
		FUNC1(&req.vht_capa_mask,
		       FUNC4(info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK]),
		       sizeof(req.vht_capa_mask));

	if (info->attrs[NL80211_ATTR_VHT_CAPABILITY]) {
		if (!info->attrs[NL80211_ATTR_VHT_CAPABILITY_MASK])
			return -EINVAL;
		FUNC1(&req.vht_capa,
		       FUNC4(info->attrs[NL80211_ATTR_VHT_CAPABILITY]),
		       sizeof(req.vht_capa));
	}

	if (FUNC5(info->attrs[NL80211_ATTR_USE_RRM])) {
		if (!((rdev->wiphy.features &
			NL80211_FEATURE_DS_PARAM_SET_IE_IN_PROBES) &&
		       (rdev->wiphy.features & NL80211_FEATURE_QUIET)) &&
		    !FUNC10(&rdev->wiphy,
					     NL80211_EXT_FEATURE_RRM))
			return -EINVAL;
		req.flags |= ASSOC_REQ_USE_RRM;
	}

	if (info->attrs[NL80211_ATTR_FILS_KEK]) {
		req.fils_kek = FUNC4(info->attrs[NL80211_ATTR_FILS_KEK]);
		req.fils_kek_len = FUNC7(info->attrs[NL80211_ATTR_FILS_KEK]);
		if (!info->attrs[NL80211_ATTR_FILS_NONCES])
			return -EINVAL;
		req.fils_nonces =
			FUNC4(info->attrs[NL80211_ATTR_FILS_NONCES]);
	}

	err = FUNC2(rdev, info, &req.crypto, 1);
	if (!err) {
		FUNC8(dev->ieee80211_ptr);

		err = FUNC0(rdev, dev, chan, bssid,
					  ssid, ssid_len, &req);

		if (!err && info->attrs[NL80211_ATTR_SOCKET_OWNER]) {
			dev->ieee80211_ptr->conn_owner_nlportid =
				info->snd_portid;
			FUNC1(dev->ieee80211_ptr->disconnect_bssid,
			       bssid, ETH_ALEN);
		}

		FUNC9(dev->ieee80211_ptr);
	}

	return err;
}