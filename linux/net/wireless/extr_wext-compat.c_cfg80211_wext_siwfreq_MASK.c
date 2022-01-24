#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wireless_dev {int iftype; int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
struct cfg80211_chan_def {int center_freq1; void* chan; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NL80211_CHAN_WIDTH_20_NOHT ; 
#define  NL80211_IFTYPE_ADHOC 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 int FUNC0 (struct net_device*,struct iw_request_info*,struct iw_freq*,char*) ; 
 int FUNC1 (struct net_device*,struct iw_request_info*,struct iw_freq*,char*) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ; 
 int FUNC3 (struct cfg80211_registered_device*,struct cfg80211_chan_def*) ; 
 int FUNC4 (struct iw_freq*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct cfg80211_registered_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				 struct iw_request_info *info,
				 struct iw_freq *wextfreq, char *extra)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC6(wdev->wiphy);
	struct cfg80211_chan_def chandef = {
		.width = NL80211_CHAN_WIDTH_20_NOHT,
	};
	int freq;

	switch (wdev->iftype) {
	case NL80211_IFTYPE_STATION:
		return FUNC1(dev, info, wextfreq, extra);
	case NL80211_IFTYPE_ADHOC:
		return FUNC0(dev, info, wextfreq, extra);
	case NL80211_IFTYPE_MONITOR:
		freq = FUNC4(wextfreq);
		if (freq < 0)
			return freq;
		if (freq == 0)
			return -EINVAL;
		chandef.center_freq1 = freq;
		chandef.chan = FUNC5(&rdev->wiphy, freq);
		if (!chandef.chan)
			return -EINVAL;
		return FUNC3(rdev, &chandef);
	case NL80211_IFTYPE_MESH_POINT:
		freq = FUNC4(wextfreq);
		if (freq < 0)
			return freq;
		if (freq == 0)
			return -EINVAL;
		chandef.center_freq1 = freq;
		chandef.chan = FUNC5(&rdev->wiphy, freq);
		if (!chandef.chan)
			return -EINVAL;
		return FUNC2(rdev, wdev, &chandef);
	default:
		return -EOPNOTSUPP;
	}
}