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
struct wireless_dev {TYPE_2__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
struct cfg80211_auth_request {int ie_len; int auth_data_len; int auth_type; int key_len; int key_idx; int /*<<< orphan*/  bss; int /*<<< orphan*/  const* key; int /*<<< orphan*/  const* auth_data; int /*<<< orphan*/  const* ie; } ;
typedef  enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;
struct TYPE_3__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_4__ {TYPE_1__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int EALREADY ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  IEEE80211_BSS_TYPE_ESS ; 
 int /*<<< orphan*/  IEEE80211_PRIVACY_ANY ; 
 int NL80211_AUTHTYPE_SHARED_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ieee80211_channel*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_auth_request*) ; 

int FUNC5(struct cfg80211_registered_device *rdev,
		       struct net_device *dev,
		       struct ieee80211_channel *chan,
		       enum nl80211_auth_type auth_type,
		       const u8 *bssid,
		       const u8 *ssid, int ssid_len,
		       const u8 *ie, int ie_len,
		       const u8 *key, int key_len, int key_idx,
		       const u8 *auth_data, int auth_data_len)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_auth_request req = {
		.ie = ie,
		.ie_len = ie_len,
		.auth_data = auth_data,
		.auth_data_len = auth_data_len,
		.auth_type = auth_type,
		.key = key,
		.key_len = key_len,
		.key_idx = key_idx,
	};
	int err;

	FUNC0(wdev);

	if (auth_type == NL80211_AUTHTYPE_SHARED_KEY)
		if (!key || !key_len || key_idx < 0 || key_idx > 3)
			return -EINVAL;

	if (wdev->current_bss &&
	    FUNC3(bssid, wdev->current_bss->pub.bssid))
		return -EALREADY;

	req.bss = FUNC1(&rdev->wiphy, chan, bssid, ssid, ssid_len,
				   IEEE80211_BSS_TYPE_ESS,
				   IEEE80211_PRIVACY_ANY);
	if (!req.bss)
		return -ENOENT;

	err = FUNC4(rdev, dev, &req);

	FUNC2(&rdev->wiphy, req.bss);
	return err;
}