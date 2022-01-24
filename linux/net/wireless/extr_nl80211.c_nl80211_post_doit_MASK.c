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
struct wireless_dev {struct wireless_dev* netdev; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {struct wireless_dev** user_ptr; } ;

/* Variables and functions */
 int NL80211_FLAG_CLEAR_SKB ; 
 int NL80211_FLAG_NEED_RTNL ; 
 int NL80211_FLAG_NEED_WDEV ; 
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(const struct genl_ops *ops, struct sk_buff *skb,
			      struct genl_info *info)
{
	if (info->user_ptr[1]) {
		if (ops->internal_flags & NL80211_FLAG_NEED_WDEV) {
			struct wireless_dev *wdev = info->user_ptr[1];

			if (wdev->netdev)
				FUNC0(wdev->netdev);
		} else {
			FUNC0(info->user_ptr[1]);
		}
	}

	if (ops->internal_flags & NL80211_FLAG_NEED_RTNL)
		FUNC5();

	/* If needed, clear the netlink message payload from the SKB
	 * as it might contain key data that shouldn't stick around on
	 * the heap after the SKB is freed. The netlink message header
	 * is still needed for further processing, so leave it intact.
	 */
	if (ops->internal_flags & NL80211_FLAG_CLEAR_SKB) {
		struct nlmsghdr *nlh = FUNC3(skb);

		FUNC1(FUNC2(nlh), 0, FUNC4(nlh));
	}
}