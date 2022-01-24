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
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {scalar_t__ iftype; TYPE_3__* current_bss; int /*<<< orphan*/  wiphy; } ;
struct station_info {int filled; int /*<<< orphan*/  txrate; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_6__ {TYPE_2__ pub; } ;
struct TYPE_4__ {int /*<<< orphan*/  get_station; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_STA_INFO_TX_BITRATE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct station_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ *,struct station_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct wireless_dev*) ; 
 struct cfg80211_registered_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				 struct iw_request_info *info,
				 struct iw_param *rate, char *extra)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC7(wdev->wiphy);
	struct station_info sinfo = {};
	u8 addr[ETH_ALEN];
	int err;

	if (wdev->iftype != NL80211_IFTYPE_STATION)
		return -EOPNOTSUPP;

	if (!rdev->ops->get_station)
		return -EOPNOTSUPP;

	err = 0;
	FUNC5(wdev);
	if (wdev->current_bss)
		FUNC3(addr, wdev->current_bss->pub.bssid, ETH_ALEN);
	else
		err = -EOPNOTSUPP;
	FUNC6(wdev);
	if (err)
		return err;

	err = FUNC4(rdev, dev, addr, &sinfo);
	if (err)
		return err;

	if (!(sinfo.filled & FUNC0(NL80211_STA_INFO_TX_BITRATE))) {
		err = -EOPNOTSUPP;
		goto free;
	}

	rate->value = 100000 * FUNC1(&sinfo.txrate);

free:
	FUNC2(&sinfo);
	return err;
}