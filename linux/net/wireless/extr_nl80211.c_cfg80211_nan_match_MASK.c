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
struct wireless_dev {int /*<<< orphan*/  owner_nlportid; TYPE_1__* netdev; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
struct cfg80211_nan_match_params {scalar_t__ info; scalar_t__ info_len; int /*<<< orphan*/  peer_inst_id; int /*<<< orphan*/  type; int /*<<< orphan*/  inst_id; scalar_t__ addr; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_NAN_MATCH ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_NAN_MATCH ; 
 int /*<<< orphan*/  NL80211_MCGRP_NAN ; 
 int /*<<< orphan*/  NL80211_NAN_FUNC_INSTANCE_ID ; 
 int /*<<< orphan*/  NL80211_NAN_FUNC_SERVICE_INFO ; 
 int /*<<< orphan*/  NL80211_NAN_FUNC_TYPE ; 
 int /*<<< orphan*/  NL80211_NAN_MATCH_FUNC_LOCAL ; 
 int /*<<< orphan*/  NL80211_NAN_MATCH_FUNC_PEER ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC15 (struct wiphy*) ; 

void FUNC16(struct wireless_dev *wdev,
			struct cfg80211_nan_match_params *match, gfp_t gfp)
{
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC15(wiphy);
	struct nlattr *match_attr, *local_func_attr, *peer_func_attr;
	struct sk_buff *msg;
	void *hdr;

	if (FUNC0(!match->inst_id || !match->peer_inst_id || !match->addr))
		return;

	msg = FUNC12(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC4(msg, 0, 0, 0, NL80211_CMD_NAN_MATCH);
	if (!hdr) {
		FUNC11(msg);
		return;
	}

	if (FUNC8(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    (wdev->netdev && FUNC8(msg, NL80211_ATTR_IFINDEX,
					 wdev->netdev->ifindex)) ||
	    FUNC9(msg, NL80211_ATTR_WDEV, FUNC13(wdev),
			      NL80211_ATTR_PAD))
		goto nla_put_failure;

	if (FUNC9(msg, NL80211_ATTR_COOKIE, match->cookie,
			      NL80211_ATTR_PAD) ||
	    FUNC7(msg, NL80211_ATTR_MAC, ETH_ALEN, match->addr))
		goto nla_put_failure;

	match_attr = FUNC6(msg, NL80211_ATTR_NAN_MATCH);
	if (!match_attr)
		goto nla_put_failure;

	local_func_attr = FUNC6(msg,
						NL80211_NAN_MATCH_FUNC_LOCAL);
	if (!local_func_attr)
		goto nla_put_failure;

	if (FUNC10(msg, NL80211_NAN_FUNC_INSTANCE_ID, match->inst_id))
		goto nla_put_failure;

	FUNC5(msg, local_func_attr);

	peer_func_attr = FUNC6(msg,
					       NL80211_NAN_MATCH_FUNC_PEER);
	if (!peer_func_attr)
		goto nla_put_failure;

	if (FUNC10(msg, NL80211_NAN_FUNC_TYPE, match->type) ||
	    FUNC10(msg, NL80211_NAN_FUNC_INSTANCE_ID, match->peer_inst_id))
		goto nla_put_failure;

	if (match->info && match->info_len &&
	    FUNC7(msg, NL80211_NAN_FUNC_SERVICE_INFO, match->info_len,
		    match->info))
		goto nla_put_failure;

	FUNC5(msg, peer_func_attr);
	FUNC5(msg, match_attr);
	FUNC1(msg, hdr);

	if (!wdev->owner_nlportid)
		FUNC2(&nl80211_fam, FUNC14(&rdev->wiphy),
					msg, 0, NL80211_MCGRP_NAN, gfp);
	else
		FUNC3(FUNC14(&rdev->wiphy), msg,
				wdev->owner_nlportid);

	return;

nla_put_failure:
	FUNC11(msg);
}