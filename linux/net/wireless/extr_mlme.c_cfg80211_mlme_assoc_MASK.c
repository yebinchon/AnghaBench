#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {TYPE_2__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  vht_capa_mod_mask; int /*<<< orphan*/  ht_capa_mod_mask; } ;
struct cfg80211_registered_device {TYPE_3__ wiphy; } ;
struct cfg80211_assoc_request {int /*<<< orphan*/  bss; int /*<<< orphan*/  vht_capa_mask; int /*<<< orphan*/  ht_capa_mask; int /*<<< orphan*/  prev_bssid; } ;
struct TYPE_5__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_6__ {TYPE_1__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int EALREADY ; 
 int ENOENT ; 
 int /*<<< orphan*/  IEEE80211_BSS_TYPE_ESS ; 
 int /*<<< orphan*/  IEEE80211_PRIVACY_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct ieee80211_channel*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_assoc_request*) ; 

int FUNC9(struct cfg80211_registered_device *rdev,
			struct net_device *dev,
			struct ieee80211_channel *chan,
			const u8 *bssid,
			const u8 *ssid, int ssid_len,
			struct cfg80211_assoc_request *req)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err;

	FUNC0(wdev);

	if (wdev->current_bss &&
	    (!req->prev_bssid || !FUNC7(wdev->current_bss->pub.bssid,
						   req->prev_bssid)))
		return -EALREADY;

	FUNC4(&req->ht_capa_mask,
				  rdev->wiphy.ht_capa_mod_mask);
	FUNC5(&req->vht_capa_mask,
				   rdev->wiphy.vht_capa_mod_mask);

	req->bss = FUNC2(&rdev->wiphy, chan, bssid, ssid, ssid_len,
				    IEEE80211_BSS_TYPE_ESS,
				    IEEE80211_PRIVACY_ANY);
	if (!req->bss)
		return -ENOENT;

	err = FUNC8(rdev, dev, req);
	if (!err)
		FUNC3(FUNC1(req->bss));
	else
		FUNC6(&rdev->wiphy, req->bss);

	return err;
}