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
struct wireless_dev {int /*<<< orphan*/  pmsr_lock; int /*<<< orphan*/  wiphy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy_idx; } ;
struct cfg80211_pmsr_request {int /*<<< orphan*/  list; int /*<<< orphan*/  nl_portid; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_PEER_MEASUREMENT_COMPLETE ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_pmsr_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct wireless_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(struct wireless_dev *wdev,
			    struct cfg80211_pmsr_request *req,
			    gfp_t gfp)
{
	struct cfg80211_registered_device *rdev = FUNC14(wdev->wiphy);
	struct sk_buff *msg;
	void *hdr;

	FUNC11(wdev->wiphy, wdev, req->cookie);

	msg = FUNC8(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		goto free_request;

	hdr = FUNC4(msg, 0, 0, 0,
			     NL80211_CMD_PEER_MEASUREMENT_COMPLETE);
	if (!hdr)
		goto free_msg;

	if (FUNC5(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC6(msg, NL80211_ATTR_WDEV, FUNC12(wdev),
			      NL80211_ATTR_PAD))
		goto free_msg;

	if (FUNC6(msg, NL80211_ATTR_COOKIE, req->cookie,
			      NL80211_ATTR_PAD))
		goto free_msg;

	FUNC0(msg, hdr);
	FUNC1(FUNC13(wdev->wiphy), msg, req->nl_portid);
	goto free_request;
free_msg:
	FUNC7(msg);
free_request:
	FUNC9(&wdev->pmsr_lock);
	FUNC3(&req->list);
	FUNC10(&wdev->pmsr_lock);
	FUNC2(req);
}