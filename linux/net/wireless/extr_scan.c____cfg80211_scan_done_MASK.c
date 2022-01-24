#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wrqu ;
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct wireless_dev {scalar_t__ netdev; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  aborted; } ;
struct cfg80211_scan_request {int flags; TYPE_1__ info; int /*<<< orphan*/  scan_start; struct wireless_dev* wdev; } ;
struct cfg80211_registered_device {struct sk_buff* scan_msg; struct cfg80211_scan_request* scan_req; int /*<<< orphan*/  bss_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int NL80211_SCAN_FLAG_FLUSH ; 
 int /*<<< orphan*/  SIOCGIWSCAN ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_scan_request*) ; 
 int /*<<< orphan*/  FUNC5 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC6 (struct cfg80211_registered_device*,struct wireless_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_registered_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

void FUNC11(struct cfg80211_registered_device *rdev,
			   bool send_message)
{
	struct cfg80211_scan_request *request;
	struct wireless_dev *wdev;
	struct sk_buff *msg;
#ifdef CONFIG_CFG80211_WEXT
	union iwreq_data wrqu;
#endif

	FUNC0();

	if (rdev->scan_msg) {
		FUNC7(rdev, rdev->scan_msg);
		rdev->scan_msg = NULL;
		return;
	}

	request = rdev->scan_req;
	if (!request)
		return;

	wdev = request->wdev;

	/*
	 * This must be before sending the other events!
	 * Otherwise, wpa_supplicant gets completely confused with
	 * wext events.
	 */
	if (wdev->netdev)
		FUNC2(wdev->netdev);

	if (!request->info.aborted &&
	    request->flags & NL80211_SCAN_FLAG_FLUSH) {
		/* flush entries from previous scans */
		FUNC8(&rdev->bss_lock);
		FUNC1(rdev, request->scan_start);
		FUNC9(&rdev->bss_lock);
	}

	msg = FUNC6(rdev, wdev, request->info.aborted);

#ifdef CONFIG_CFG80211_WEXT
	if (wdev->netdev && !request->info.aborted) {
		memset(&wrqu, 0, sizeof(wrqu));

		wireless_send_event(wdev->netdev, SIOCGIWSCAN, &wrqu, NULL);
	}
#endif

	if (wdev->netdev)
		FUNC3(wdev->netdev);

	rdev->scan_req = NULL;
	FUNC4(request);

	if (!send_message)
		rdev->scan_msg = msg;
	else
		FUNC7(rdev, msg);
}