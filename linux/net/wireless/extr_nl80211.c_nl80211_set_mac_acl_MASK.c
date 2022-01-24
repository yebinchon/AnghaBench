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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  wiphy; TYPE_1__* ieee80211_ptr; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_acl_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ iftype; int /*<<< orphan*/  beacon_interval; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct cfg80211_acl_data*) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int FUNC1 (struct cfg80211_acl_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_acl_data*) ; 
 struct cfg80211_acl_data* FUNC3 (int /*<<< orphan*/ *,struct genl_info*) ; 
 int FUNC4 (struct net_device*,struct net_device*,struct cfg80211_acl_data*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct cfg80211_acl_data *acl;
	int err;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
		return -EOPNOTSUPP;

	if (!dev->ieee80211_ptr->beacon_interval)
		return -EINVAL;

	acl = FUNC3(&rdev->wiphy, info);
	if (FUNC0(acl))
		return FUNC1(acl);

	err = FUNC4(rdev, dev, acl);

	FUNC2(acl);

	return err;
}