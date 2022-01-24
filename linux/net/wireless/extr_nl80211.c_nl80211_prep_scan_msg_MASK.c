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
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {TYPE_1__* netdev; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy_idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct cfg80211_registered_device*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *msg,
				 struct cfg80211_registered_device *rdev,
				 struct wireless_dev *wdev,
				 u32 portid, u32 seq, int flags,
				 u32 cmd)
{
	void *hdr;

	hdr = FUNC3(msg, portid, seq, flags, cmd);
	if (!hdr)
		return -1;

	if (FUNC4(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    (wdev->netdev && FUNC4(msg, NL80211_ATTR_IFINDEX,
					 wdev->netdev->ifindex)) ||
	    FUNC5(msg, NL80211_ATTR_WDEV, FUNC6(wdev),
			      NL80211_ATTR_PAD))
		goto nla_put_failure;

	/* ignore errors and send incomplete event anyway */
	FUNC2(msg, rdev);

	FUNC1(msg, hdr);
	return 0;

 nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}