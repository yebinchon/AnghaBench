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
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ ssid_len; int /*<<< orphan*/  ssid; } ;
struct cfg80211_external_auth_params {int /*<<< orphan*/  pmkid; int /*<<< orphan*/  status; int /*<<< orphan*/  bssid; TYPE_3__ ssid; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_5__ {scalar_t__ iftype; } ;
struct TYPE_4__ {int /*<<< orphan*/  external_auth; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ ETH_ALEN ; 
 scalar_t__ IEEE80211_MAX_SSID_LEN ; 
 size_t NL80211_ATTR_BSSID ; 
 size_t NL80211_ATTR_PMKID ; 
 size_t NL80211_ATTR_SSID ; 
 size_t NL80211_ATTR_STATUS_CODE ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_external_auth_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (struct net_device*,struct net_device*,struct cfg80211_external_auth_params*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct cfg80211_external_auth_params params;

	if (!rdev->ops->external_auth)
		return -EOPNOTSUPP;

	if (!info->attrs[NL80211_ATTR_SSID] &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
		return -EINVAL;

	if (!info->attrs[NL80211_ATTR_BSSID])
		return -EINVAL;

	if (!info->attrs[NL80211_ATTR_STATUS_CODE])
		return -EINVAL;

	FUNC1(&params, 0, sizeof(params));

	if (info->attrs[NL80211_ATTR_SSID]) {
		params.ssid.ssid_len = FUNC4(info->attrs[NL80211_ATTR_SSID]);
		if (params.ssid.ssid_len == 0 ||
		    params.ssid.ssid_len > IEEE80211_MAX_SSID_LEN)
			return -EINVAL;
		FUNC0(params.ssid.ssid,
		       FUNC2(info->attrs[NL80211_ATTR_SSID]),
		       params.ssid.ssid_len);
	}

	FUNC0(params.bssid, FUNC2(info->attrs[NL80211_ATTR_BSSID]),
	       ETH_ALEN);

	params.status = FUNC3(info->attrs[NL80211_ATTR_STATUS_CODE]);

	if (info->attrs[NL80211_ATTR_PMKID])
		params.pmkid = FUNC2(info->attrs[NL80211_ATTR_PMKID]);

	return FUNC5(rdev, dev, &params);
}