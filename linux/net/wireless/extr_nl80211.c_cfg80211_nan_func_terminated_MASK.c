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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {int /*<<< orphan*/  owner_nlportid; TYPE_1__* netdev; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_nan_func_term_reason { ____Placeholder_nl80211_nan_func_term_reason } nl80211_nan_func_term_reason ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_NAN_FUNC ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_DEL_NAN_FUNCTION ; 
 int /*<<< orphan*/  NL80211_MCGRP_NAN ; 
 int /*<<< orphan*/  NL80211_NAN_FUNC_INSTANCE_ID ; 
 int /*<<< orphan*/  NL80211_NAN_FUNC_TERM_REASON ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC14 (struct wiphy*) ; 

void FUNC15(struct wireless_dev *wdev,
				  u8 inst_id,
				  enum nl80211_nan_func_term_reason reason,
				  u64 cookie, gfp_t gfp)
{
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC14(wiphy);
	struct sk_buff *msg;
	struct nlattr *func_attr;
	void *hdr;

	if (FUNC0(!inst_id))
		return;

	msg = FUNC11(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC4(msg, 0, 0, 0, NL80211_CMD_DEL_NAN_FUNCTION);
	if (!hdr) {
		FUNC10(msg);
		return;
	}

	if (FUNC7(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    (wdev->netdev && FUNC7(msg, NL80211_ATTR_IFINDEX,
					 wdev->netdev->ifindex)) ||
	    FUNC8(msg, NL80211_ATTR_WDEV, FUNC12(wdev),
			      NL80211_ATTR_PAD))
		goto nla_put_failure;

	if (FUNC8(msg, NL80211_ATTR_COOKIE, cookie,
			      NL80211_ATTR_PAD))
		goto nla_put_failure;

	func_attr = FUNC6(msg, NL80211_ATTR_NAN_FUNC);
	if (!func_attr)
		goto nla_put_failure;

	if (FUNC9(msg, NL80211_NAN_FUNC_INSTANCE_ID, inst_id) ||
	    FUNC9(msg, NL80211_NAN_FUNC_TERM_REASON, reason))
		goto nla_put_failure;

	FUNC5(msg, func_attr);
	FUNC1(msg, hdr);

	if (!wdev->owner_nlportid)
		FUNC2(&nl80211_fam, FUNC13(&rdev->wiphy),
					msg, 0, NL80211_MCGRP_NAN, gfp);
	else
		FUNC3(FUNC13(&rdev->wiphy), msg,
				wdev->owner_nlportid);

	return;

nla_put_failure:
	FUNC10(msg);
}