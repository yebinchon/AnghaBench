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
struct wireless_dev {scalar_t__ iftype; TYPE_1__* current_bss; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_3__ {TYPE_2__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct wireless_dev*) ; 

int FUNC5(struct net_device *dev,
			    struct iw_request_info *info,
			    struct sockaddr *ap_addr, char *extra)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;

	/* call only for station! */
	if (FUNC0(wdev->iftype != NL80211_IFTYPE_STATION))
		return -EINVAL;

	ap_addr->sa_family = ARPHRD_ETHER;

	FUNC3(wdev);
	if (wdev->current_bss)
		FUNC2(ap_addr->sa_data, wdev->current_bss->pub.bssid, ETH_ALEN);
	else
		FUNC1(ap_addr->sa_data);
	FUNC4(wdev);

	return 0;
}