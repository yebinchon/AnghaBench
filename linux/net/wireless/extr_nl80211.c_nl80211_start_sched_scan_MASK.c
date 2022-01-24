#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wireless_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int max_sched_scan_reqs; int /*<<< orphan*/  max_match_sets; } ;
struct net_device {TYPE_2__ wiphy; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int* attrs; int /*<<< orphan*/  snd_portid; struct net_device** user_ptr; } ;
struct cfg80211_sched_scan_request {int /*<<< orphan*/  owner_nlportid; TYPE_2__* wiphy; struct net_device* dev; scalar_t__ reqid; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  sched_scan_start; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 size_t NL80211_ATTR_SCHED_SCAN_MULTI ; 
 size_t NL80211_ATTR_SOCKET_OWNER ; 
 int /*<<< orphan*/  NL80211_CMD_START_SCHED_SCAN ; 
 int FUNC0 (struct cfg80211_sched_scan_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct cfg80211_sched_scan_request*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_sched_scan_request*) ; 
 struct cfg80211_sched_scan_request* FUNC5 (TYPE_2__*,struct wireless_dev*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg80211_sched_scan_request*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,struct net_device*,struct cfg80211_sched_scan_request*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
				    struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_sched_scan_request *sched_scan_req;
	bool want_multi;
	int err;

	if (!rdev->wiphy.max_sched_scan_reqs || !rdev->ops->sched_scan_start)
		return -EOPNOTSUPP;

	want_multi = info->attrs[NL80211_ATTR_SCHED_SCAN_MULTI];
	err = FUNC3(rdev, want_multi);
	if (err)
		return err;

	sched_scan_req = FUNC5(&rdev->wiphy, wdev,
						  info->attrs,
						  rdev->wiphy.max_match_sets);

	err = FUNC0(sched_scan_req);
	if (err)
		goto out_err;

	/* leave request id zero for legacy request
	 * or if driver does not support multi-scheduled scan
	 */
	if (want_multi && rdev->wiphy.max_sched_scan_reqs > 1) {
		while (!sched_scan_req->reqid)
			sched_scan_req->reqid = FUNC2(rdev);
	}

	err = FUNC7(rdev, dev, sched_scan_req);
	if (err)
		goto out_free;

	sched_scan_req->dev = dev;
	sched_scan_req->wiphy = &rdev->wiphy;

	if (info->attrs[NL80211_ATTR_SOCKET_OWNER])
		sched_scan_req->owner_nlportid = info->snd_portid;

	FUNC1(rdev, sched_scan_req);

	FUNC6(sched_scan_req, NL80211_CMD_START_SCHED_SCAN);
	return 0;

out_free:
	FUNC4(sched_scan_req);
out_err:
	return err;
}