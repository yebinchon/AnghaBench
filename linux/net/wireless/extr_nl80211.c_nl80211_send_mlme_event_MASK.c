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
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_FRAME ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_REQ_IE ; 
 int /*<<< orphan*/  NL80211_ATTR_STA_WME ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_MCGRP_MLME ; 
 int /*<<< orphan*/  NL80211_STA_WME_UAPSD_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct cfg80211_registered_device *rdev,
				    struct net_device *netdev,
				    const u8 *buf, size_t len,
				    enum nl80211_commands cmd, gfp_t gfp,
				    int uapsd_queues, const u8 *req_ies,
				    size_t req_ies_len)
{
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC9(100 + len + req_ies_len, gfp);
	if (!msg)
		return;

	hdr = FUNC2(msg, 0, 0, 0, cmd);
	if (!hdr) {
		FUNC8(msg);
		return;
	}

	if (FUNC6(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC6(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
	    FUNC5(msg, NL80211_ATTR_FRAME, len, buf) ||
	    (req_ies &&
	     FUNC5(msg, NL80211_ATTR_REQ_IE, req_ies_len, req_ies)))
		goto nla_put_failure;

	if (uapsd_queues >= 0) {
		struct nlattr *nla_wmm =
			FUNC4(msg, NL80211_ATTR_STA_WME);
		if (!nla_wmm)
			goto nla_put_failure;

		if (FUNC7(msg, NL80211_STA_WME_UAPSD_QUEUES,
			       uapsd_queues))
			goto nla_put_failure;

		FUNC3(msg, nla_wmm);
	}

	FUNC0(msg, hdr);

	FUNC1(&nl80211_fam, FUNC10(&rdev->wiphy), msg, 0,
				NL80211_MCGRP_MLME, gfp);
	return;

 nla_put_failure:
	FUNC8(msg);
}