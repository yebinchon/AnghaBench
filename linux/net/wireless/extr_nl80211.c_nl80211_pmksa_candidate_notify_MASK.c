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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy_idx; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_PMKSA_CANDIDATE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_PMKSA_CANDIDATE ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NL80211_PMKSA_CANDIDATE_BSSID ; 
 int /*<<< orphan*/  NL80211_PMKSA_CANDIDATE_INDEX ; 
 int /*<<< orphan*/  NL80211_PMKSA_CANDIDATE_PREAUTH ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct cfg80211_registered_device *rdev,
			       struct net_device *netdev, int index,
			       const u8 *bssid, bool preauth, gfp_t gfp)
{
	struct sk_buff *msg;
	struct nlattr *attr;
	void *hdr;

	msg = FUNC9(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, NL80211_CMD_PMKSA_CANDIDATE);
	if (!hdr) {
		FUNC8(msg);
		return;
	}

	if (FUNC7(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC7(msg, NL80211_ATTR_IFINDEX, netdev->ifindex))
		goto nla_put_failure;

	attr = FUNC4(msg, NL80211_ATTR_PMKSA_CANDIDATE);
	if (!attr)
		goto nla_put_failure;

	if (FUNC7(msg, NL80211_PMKSA_CANDIDATE_INDEX, index) ||
	    FUNC5(msg, NL80211_PMKSA_CANDIDATE_BSSID, ETH_ALEN, bssid) ||
	    (preauth &&
	     FUNC6(msg, NL80211_PMKSA_CANDIDATE_PREAUTH)))
		goto nla_put_failure;

	FUNC3(msg, attr);

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC10(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC8(msg);
}