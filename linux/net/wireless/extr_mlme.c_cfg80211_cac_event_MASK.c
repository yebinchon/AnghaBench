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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct wireless_dev {int cac_started; unsigned long cac_start_time; int /*<<< orphan*/  cac_time_ms; TYPE_1__ chandef; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  propagate_cac_done_wk; int /*<<< orphan*/  cac_done_chandef; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_radar_event { ____Placeholder_nl80211_radar_event } nl80211_radar_event ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_DFS_AVAILABLE ; 
#define  NL80211_RADAR_CAC_ABORTED 130 
#define  NL80211_RADAR_CAC_FINISHED 129 
#define  NL80211_RADAR_CAC_STARTED 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,struct cfg80211_chan_def const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cfg80211_chan_def const*,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_registered_device*,struct cfg80211_chan_def const*,int,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 struct cfg80211_registered_device* FUNC9 (struct wiphy*) ; 

void FUNC10(struct net_device *netdev,
			const struct cfg80211_chan_def *chandef,
			enum nl80211_radar_event event, gfp_t gfp)
{
	struct wireless_dev *wdev = netdev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC9(wiphy);
	unsigned long timeout;

	FUNC8(netdev, event);

	if (FUNC0(!wdev->cac_started && event != NL80211_RADAR_CAC_STARTED))
		return;

	if (FUNC0(!wdev->chandef.chan))
		return;

	switch (event) {
	case NL80211_RADAR_CAC_FINISHED:
		timeout = wdev->cac_start_time +
			  FUNC4(wdev->cac_time_ms);
		FUNC0(!FUNC7(jiffies, timeout));
		FUNC2(wiphy, chandef, NL80211_DFS_AVAILABLE);
		FUNC3(&rdev->cac_done_chandef, chandef,
		       sizeof(struct cfg80211_chan_def));
		FUNC6(cfg80211_wq, &rdev->propagate_cac_done_wk);
		FUNC1(rdev);
		/* fall through */
	case NL80211_RADAR_CAC_ABORTED:
		wdev->cac_started = false;
		break;
	case NL80211_RADAR_CAC_STARTED:
		wdev->cac_started = true;
		break;
	default:
		FUNC0(1);
		return;
	}

	FUNC5(rdev, chandef, event, netdev, gfp);
}