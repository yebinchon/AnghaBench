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
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy_idx; } ;
struct cfg80211_pmsr_result {int /*<<< orphan*/  addr; } ;
struct cfg80211_pmsr_request {int /*<<< orphan*/  nl_portid; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_PEER_MEASUREMENT_RESULT ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct cfg80211_pmsr_result*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct wireless_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct wireless_dev *wdev,
			  struct cfg80211_pmsr_request *req,
			  struct cfg80211_pmsr_result *result,
			  gfp_t gfp)
{
	struct cfg80211_registered_device *rdev = FUNC12(wdev->wiphy);
	struct sk_buff *msg;
	void *hdr;
	int err;

	FUNC9(wdev->wiphy, wdev, req->cookie,
				   result->addr);

	/*
	 * Currently, only variable items are LCI and civic location,
	 * both of which are reasonably short so we don't need to
	 * worry about them here for the allocation.
	 */
	msg = FUNC7(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_PEER_MEASUREMENT_RESULT);
	if (!hdr)
		goto free;

	if (FUNC4(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC5(msg, NL80211_ATTR_WDEV, FUNC10(wdev),
			      NL80211_ATTR_PAD))
		goto free;

	if (FUNC5(msg, NL80211_ATTR_COOKIE, req->cookie,
			      NL80211_ATTR_PAD))
		goto free;

	err = FUNC2(msg, result);
	if (err) {
		FUNC8("peer measurement result: message didn't fit!");
		goto free;
	}

	FUNC0(msg, hdr);
	FUNC1(FUNC11(wdev->wiphy), msg, req->nl_portid);
	return;
free:
	FUNC6(msg);
}