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
struct TYPE_3__ {struct ieee80211_channel* channel; scalar_t__ ssid_len; } ;
struct TYPE_4__ {TYPE_1__ connect; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_2__ wext; scalar_t__ conn; int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int dummy; } ;
struct ieee80211_channel {int flags; } ;
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_CHAN_DISABLED ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int FUNC1 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int FUNC3 (struct iw_freq*) ; 
 struct ieee80211_channel* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct wireless_dev*) ; 
 struct cfg80211_registered_device* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct net_device *dev,
			      struct iw_request_info *info,
			      struct iw_freq *wextfreq, char *extra)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC7(wdev->wiphy);
	struct ieee80211_channel *chan = NULL;
	int err, freq;

	/* call only for station! */
	if (FUNC0(wdev->iftype != NL80211_IFTYPE_STATION))
		return -EINVAL;

	freq = FUNC3(wextfreq);
	if (freq < 0)
		return freq;

	if (freq) {
		chan = FUNC4(wdev->wiphy, freq);
		if (!chan)
			return -EINVAL;
		if (chan->flags & IEEE80211_CHAN_DISABLED)
			return -EINVAL;
	}

	FUNC5(wdev);

	if (wdev->conn) {
		bool event = true;

		if (wdev->wext.connect.channel == chan) {
			err = 0;
			goto out;
		}

		/* if SSID set, we'll try right again, avoid event */
		if (wdev->wext.connect.ssid_len)
			event = false;
		err = FUNC1(rdev, dev,
					  WLAN_REASON_DEAUTH_LEAVING, event);
		if (err)
			goto out;
	}

	wdev->wext.connect.channel = chan;
	err = FUNC2(rdev, wdev);
 out:
	FUNC6(wdev);
	return err;
}