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
struct TYPE_2__ {int /*<<< orphan*/  keys; } ;
struct wireless_dev {int iftype; int /*<<< orphan*/  disconnect_wk; scalar_t__ netdev; TYPE_1__ wext; int /*<<< orphan*/  list; int /*<<< orphan*/  pmsr_free_wk; int /*<<< orphan*/  wiphy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  devlist_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NL80211_CMD_DEL_INTERFACE ; 
#define  NL80211_IFTYPE_NAN 129 
#define  NL80211_IFTYPE_P2P_DEVICE 128 
 int /*<<< orphan*/  FUNC1 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct cfg80211_registered_device*,struct wireless_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct cfg80211_registered_device* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct wireless_dev *wdev, bool sync)
{
	struct cfg80211_registered_device *rdev = FUNC10(wdev->wiphy);

	FUNC0();

	FUNC5(&wdev->pmsr_free_wk);

	FUNC8(rdev, wdev, NL80211_CMD_DEL_INTERFACE);

	FUNC7(&wdev->list);
	if (sync)
		FUNC9();
	rdev->devlist_generation++;

	FUNC2(wdev);

	switch (wdev->iftype) {
	case NL80211_IFTYPE_P2P_DEVICE:
		FUNC4(rdev, wdev);
		break;
	case NL80211_IFTYPE_NAN:
		FUNC3(rdev, wdev);
		break;
	default:
		break;
	}

#ifdef CONFIG_CFG80211_WEXT
	kzfree(wdev->wext.keys);
#endif
	/* only initialized if we have a netdev */
	if (wdev->netdev)
		FUNC5(&wdev->disconnect_wk);

	FUNC1(wdev);
}