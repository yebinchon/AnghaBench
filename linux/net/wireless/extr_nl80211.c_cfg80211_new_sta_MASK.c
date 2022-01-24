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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct station_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_CMD_NEW_STATION ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/  const*,struct station_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/  const*,struct station_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC6 (struct wiphy*) ; 

void FUNC7(struct net_device *dev, const u8 *mac_addr,
		      struct station_info *sinfo, gfp_t gfp)
{
	struct wiphy *wiphy = dev->ieee80211_ptr->wiphy;
	struct cfg80211_registered_device *rdev = FUNC6(wiphy);
	struct sk_buff *msg;

	FUNC4(dev, mac_addr, sinfo);

	msg = FUNC3(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	if (FUNC1(msg, NL80211_CMD_NEW_STATION, 0, 0, 0,
				 rdev, dev, mac_addr, sinfo) < 0) {
		FUNC2(msg);
		return;
	}

	FUNC0(&nl80211_fam, FUNC5(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
}