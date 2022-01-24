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
struct wireless_dev {scalar_t__ iftype; int /*<<< orphan*/  netdev; int /*<<< orphan*/  wiphy; TYPE_2__* current_bss; } ;
struct TYPE_3__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_4__ {TYPE_1__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct wireless_dev *wdev, const u8 *bssid)
{
	FUNC0(wdev);

	if (FUNC1(wdev->iftype != NL80211_IFTYPE_STATION))
		return;

	if (FUNC1(!wdev->current_bss) ||
	    FUNC1(!FUNC2(wdev->current_bss->pub.bssid, bssid)))
		return;

	FUNC3(FUNC4(wdev->wiphy), wdev->netdev,
				     bssid);
}