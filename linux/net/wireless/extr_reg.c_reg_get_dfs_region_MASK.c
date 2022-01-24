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
struct wiphy {int /*<<< orphan*/  dev; } ;
struct ieee80211_regdomain {scalar_t__ dfs_region; } ;
typedef  enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ieee80211_regdomain* FUNC1 () ; 
 struct ieee80211_regdomain* FUNC2 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

enum nl80211_dfs_regions FUNC5(struct wiphy *wiphy)
{
	const struct ieee80211_regdomain *regd = NULL;
	const struct ieee80211_regdomain *wiphy_regd = NULL;

	regd = FUNC1();
	if (!wiphy)
		goto out;

	wiphy_regd = FUNC2(wiphy);
	if (!wiphy_regd)
		goto out;

	if (wiphy_regd->dfs_region == regd->dfs_region)
		goto out;

	FUNC3("%s: device specific dfs_region (%s) disagrees with cfg80211's central dfs_region (%s)\n",
		 FUNC0(&wiphy->dev),
		 FUNC4(wiphy_regd->dfs_region),
		 FUNC4(regd->dfs_region));

out:
	return regd->dfs_region;
}