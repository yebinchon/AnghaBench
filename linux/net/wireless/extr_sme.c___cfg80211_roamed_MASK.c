#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wrqu ;
struct TYPE_10__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
struct TYPE_11__ {int prev_bssid_valid; int /*<<< orphan*/  prev_bssid; } ;
struct wireless_dev {scalar_t__ iftype; int /*<<< orphan*/  wiphy; int /*<<< orphan*/  netdev; TYPE_3__ wext; TYPE_4__* current_bss; } ;
struct cfg80211_roam_info {TYPE_5__* bss; int /*<<< orphan*/ * resp_ie; int /*<<< orphan*/  resp_ie_len; int /*<<< orphan*/ * req_ie; int /*<<< orphan*/  req_ie_len; } ;
struct TYPE_13__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_12__ {TYPE_5__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IWEVASSOCREQIE ; 
 int /*<<< orphan*/  IWEVASSOCRESPIE ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_4__* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfg80211_roam_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

void FUNC11(struct wireless_dev *wdev,
		       struct cfg80211_roam_info *info)
{
#ifdef CONFIG_CFG80211_WEXT
	union iwreq_data wrqu;
#endif
	FUNC0(wdev);

	if (FUNC1(wdev->iftype != NL80211_IFTYPE_STATION &&
		    wdev->iftype != NL80211_IFTYPE_P2P_CLIENT))
		goto out;

	if (FUNC1(!wdev->current_bss))
		goto out;

	FUNC5(wdev->current_bss);
	FUNC4(wdev->wiphy, &wdev->current_bss->pub);
	wdev->current_bss = NULL;

	if (FUNC1(!info->bss))
		return;

	FUNC3(FUNC2(info->bss));
	wdev->current_bss = FUNC2(info->bss);

	FUNC8(FUNC9(wdev->wiphy),
			    wdev->netdev, info, GFP_KERNEL);

#ifdef CONFIG_CFG80211_WEXT
	if (info->req_ie) {
		memset(&wrqu, 0, sizeof(wrqu));
		wrqu.data.length = info->req_ie_len;
		wireless_send_event(wdev->netdev, IWEVASSOCREQIE,
				    &wrqu, info->req_ie);
	}

	if (info->resp_ie) {
		memset(&wrqu, 0, sizeof(wrqu));
		wrqu.data.length = info->resp_ie_len;
		wireless_send_event(wdev->netdev, IWEVASSOCRESPIE,
				    &wrqu, info->resp_ie);
	}

	memset(&wrqu, 0, sizeof(wrqu));
	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
	memcpy(wrqu.ap_addr.sa_data, info->bss->bssid, ETH_ALEN);
	memcpy(wdev->wext.prev_bssid, info->bss->bssid, ETH_ALEN);
	wdev->wext.prev_bssid_valid = true;
	wireless_send_event(wdev->netdev, SIOCGIWAP, &wrqu, NULL);
#endif

	return;
out:
	FUNC4(wdev->wiphy, info->bss);
}