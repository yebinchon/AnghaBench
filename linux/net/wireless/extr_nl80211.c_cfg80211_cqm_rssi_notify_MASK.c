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
struct wireless_dev {TYPE_1__* cqm_config; int /*<<< orphan*/  wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_cqm_rssi_threshold_event { ____Placeholder_nl80211_cqm_rssi_threshold_event } nl80211_cqm_rssi_threshold_event ;
struct TYPE_2__ {int /*<<< orphan*/  last_rssi_event_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_CQM_RSSI_LEVEL ; 
 int /*<<< orphan*/  NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT ; 
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH ; 
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,struct net_device*) ; 
 struct sk_buff* FUNC2 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct net_device *dev,
			      enum nl80211_cqm_rssi_threshold_event rssi_event,
			      s32 rssi_level, gfp_t gfp)
{
	struct sk_buff *msg;
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC8(wdev->wiphy);

	FUNC7(dev, rssi_event, rssi_level);

	if (FUNC0(rssi_event != NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW &&
		    rssi_event != NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH))
		return;

	if (wdev->cqm_config) {
		wdev->cqm_config->last_rssi_event_value = rssi_level;

		FUNC1(rdev, dev);

		if (rssi_level == 0)
			rssi_level = wdev->cqm_config->last_rssi_event_value;
	}

	msg = FUNC2(dev, NULL, gfp);
	if (!msg)
		return;

	if (FUNC5(msg, NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT,
			rssi_event))
		goto nla_put_failure;

	if (rssi_level && FUNC4(msg, NL80211_ATTR_CQM_RSSI_LEVEL,
				      rssi_level))
		goto nla_put_failure;

	FUNC3(msg, gfp);

	return;

 nla_put_failure:
	FUNC6(msg);
}