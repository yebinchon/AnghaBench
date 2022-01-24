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
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct net_device {int /*<<< orphan*/  ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_CQM ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_NOTIFY_CQM ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 void* FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct net_device *dev,
					    const char *mac, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC6(wdev->wiphy);
	struct sk_buff *msg = FUNC5(NLMSG_DEFAULT_SIZE, gfp);
	void **cb;

	if (!msg)
		return NULL;

	cb = (void **)msg->cb;

	cb[0] = FUNC0(msg, 0, 0, 0, NL80211_CMD_NOTIFY_CQM);
	if (!cb[0]) {
		FUNC4(msg);
		return NULL;
	}

	if (FUNC3(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC3(msg, NL80211_ATTR_IFINDEX, dev->ifindex))
		goto nla_put_failure;

	if (mac && FUNC2(msg, NL80211_ATTR_MAC, ETH_ALEN, mac))
		goto nla_put_failure;

	cb[1] = FUNC1(msg, NL80211_ATTR_CQM);
	if (!cb[1])
		goto nla_put_failure;

	cb[2] = rdev;

	return msg;
 nla_put_failure:
	FUNC4(msg);
	return NULL;
}