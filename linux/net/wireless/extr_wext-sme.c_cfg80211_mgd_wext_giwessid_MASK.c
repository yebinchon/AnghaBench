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
typedef  scalar_t__ u8 ;
struct TYPE_5__ {scalar_t__ const* ssid; scalar_t__ ssid_len; } ;
struct TYPE_6__ {TYPE_2__ connect; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_3__ wext; TYPE_1__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; scalar_t__ length; } ;
struct TYPE_4__ {int /*<<< orphan*/  pub; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IW_ESSID_MAX_SIZE ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct wireless_dev*) ; 

int FUNC7(struct net_device *dev,
			       struct iw_request_info *info,
			       struct iw_point *data, char *ssid)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int ret = 0;

	/* call only for station! */
	if (FUNC0(wdev->iftype != NL80211_IFTYPE_STATION))
		return -EINVAL;

	data->flags = 0;

	FUNC5(wdev);
	if (wdev->current_bss) {
		const u8 *ie;

		FUNC3();
		ie = FUNC1(&wdev->current_bss->pub,
					  WLAN_EID_SSID);
		if (ie) {
			data->flags = 1;
			data->length = ie[1];
			if (data->length > IW_ESSID_MAX_SIZE)
				ret = -EINVAL;
			else
				FUNC2(ssid, ie + 2, data->length);
		}
		FUNC4();
	} else if (wdev->wext.connect.ssid && wdev->wext.connect.ssid_len) {
		data->flags = 1;
		data->length = wdev->wext.connect.ssid_len;
		FUNC2(ssid, wdev->wext.connect.ssid, data->length);
	}
	FUNC6(wdev);

	return ret;
}