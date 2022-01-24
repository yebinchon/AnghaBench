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
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {TYPE_2__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_disassoc_request {int local_state_change; int ie_len; TYPE_1__* bss; int /*<<< orphan*/  const* ie; int /*<<< orphan*/  reason_code; } ;
struct TYPE_3__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_4__ {TYPE_1__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC3 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_disassoc_request*) ; 

int FUNC4(struct cfg80211_registered_device *rdev,
			   struct net_device *dev, const u8 *bssid,
			   const u8 *ie, int ie_len, u16 reason,
			   bool local_state_change)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_disassoc_request req = {
		.reason_code = reason,
		.local_state_change = local_state_change,
		.ie = ie,
		.ie_len = ie_len,
	};
	int err;

	FUNC0(wdev);

	if (!wdev->current_bss)
		return -ENOTCONN;

	if (FUNC2(wdev->current_bss->pub.bssid, bssid))
		req.bss = &wdev->current_bss->pub;
	else
		return -ENOTCONN;

	err = FUNC3(rdev, dev, &req);
	if (err)
		return err;

	/* driver should have reported the disassoc */
	FUNC1(wdev->current_bss);
	return 0;
}