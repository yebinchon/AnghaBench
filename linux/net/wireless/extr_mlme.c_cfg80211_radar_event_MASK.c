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
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  propagate_radar_detect_wk; int /*<<< orphan*/  radar_chandef; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_DFS_UNAVAILABLE ; 
 int /*<<< orphan*/  NL80211_RADAR_DETECTED ; 
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cfg80211_chan_def*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_registered_device*,struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wiphy*,struct cfg80211_chan_def*) ; 
 struct cfg80211_registered_device* FUNC6 (struct wiphy*) ; 

void FUNC7(struct wiphy *wiphy,
			  struct cfg80211_chan_def *chandef,
			  gfp_t gfp)
{
	struct cfg80211_registered_device *rdev = FUNC6(wiphy);

	FUNC5(wiphy, chandef);

	/* only set the chandef supplied channel to unavailable, in
	 * case the radar is detected on only one of multiple channels
	 * spanned by the chandef.
	 */
	FUNC1(wiphy, chandef, NL80211_DFS_UNAVAILABLE);

	FUNC0(rdev);

	FUNC3(rdev, chandef, NL80211_RADAR_DETECTED, NULL, gfp);

	FUNC2(&rdev->radar_chandef, chandef, sizeof(struct cfg80211_chan_def));
	FUNC4(cfg80211_wq, &rdev->propagate_radar_detect_wk);
}