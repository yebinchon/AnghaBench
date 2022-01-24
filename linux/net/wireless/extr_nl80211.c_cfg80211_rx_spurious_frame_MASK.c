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
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_CMD_UNEXPECTED_FRAME ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/  const*) ; 

bool FUNC4(struct net_device *dev,
				const u8 *addr, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	bool ret;

	FUNC3(dev, addr);

	if (FUNC0(wdev->iftype != NL80211_IFTYPE_AP &&
		    wdev->iftype != NL80211_IFTYPE_P2P_GO)) {
		FUNC2(false);
		return false;
	}
	ret = FUNC1(dev, NL80211_CMD_UNEXPECTED_FRAME,
					 addr, gfp);
	FUNC2(ret);
	return ret;
}