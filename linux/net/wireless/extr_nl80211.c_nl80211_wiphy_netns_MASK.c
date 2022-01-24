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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {scalar_t__* attrs; struct cfg80211_registered_device** user_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct net*) ; 
 size_t NL80211_ATTR_NETNS_FD ; 
 size_t NL80211_ATTR_PID ; 
 int FUNC1 (struct net*) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct net*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net *net;
	int err;

	if (info->attrs[NL80211_ATTR_PID]) {
		u32 pid = FUNC6(info->attrs[NL80211_ATTR_PID]);

		net = FUNC4(pid);
	} else if (info->attrs[NL80211_ATTR_NETNS_FD]) {
		u32 fd = FUNC6(info->attrs[NL80211_ATTR_NETNS_FD]);

		net = FUNC3(fd);
	} else {
		return -EINVAL;
	}

	if (FUNC0(net))
		return FUNC1(net);

	err = 0;

	/* check if anything to do */
	if (!FUNC5(FUNC8(&rdev->wiphy), net))
		err = FUNC2(rdev, net);

	FUNC7(net);
	return err;
}