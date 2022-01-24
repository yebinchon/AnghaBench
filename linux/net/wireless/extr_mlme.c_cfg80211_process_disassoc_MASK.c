#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {TYPE_5__* netdev; TYPE_4__* current_bss; int /*<<< orphan*/  wiphy; } ;
struct TYPE_7__ {int /*<<< orphan*/  reason_code; } ;
struct TYPE_8__ {TYPE_1__ disassoc; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  sa; TYPE_2__ u; int /*<<< orphan*/ * bssid; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  const* dev_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_10__ {TYPE_3__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_registered_device*,TYPE_5__*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct wireless_dev *wdev,
				      const u8 *buf, size_t len)
{
	struct cfg80211_registered_device *rdev = FUNC6(wdev->wiphy);
	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)buf;
	const u8 *bssid = mgmt->bssid;
	u16 reason_code = FUNC4(mgmt->u.disassoc.reason_code);
	bool from_ap = !FUNC3(mgmt->sa, wdev->netdev->dev_addr);

	FUNC5(rdev, wdev->netdev, buf, len, GFP_KERNEL);

	if (FUNC0(!wdev->current_bss ||
		    !FUNC3(wdev->current_bss->pub.bssid, bssid)))
		return;

	FUNC1(wdev->netdev, NULL, 0, reason_code, from_ap);
	FUNC2(wdev);
}