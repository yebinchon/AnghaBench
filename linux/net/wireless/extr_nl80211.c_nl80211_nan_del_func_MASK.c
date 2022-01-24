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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {scalar_t__ iftype; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 size_t NL80211_ATTR_COOKIE ; 
 scalar_t__ NL80211_IFTYPE_NAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wireless_dev*,struct wireless_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
			       struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct wireless_dev *wdev = info->user_ptr[1];
	u64 cookie;

	if (wdev->iftype != NL80211_IFTYPE_NAN)
		return -EOPNOTSUPP;

	if (!FUNC2(wdev))
		return -ENOTCONN;

	if (!info->attrs[NL80211_ATTR_COOKIE])
		return -EINVAL;

	cookie = FUNC0(info->attrs[NL80211_ATTR_COOKIE]);

	FUNC1(rdev, wdev, cookie);

	return 0;
}