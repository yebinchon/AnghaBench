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
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;
struct cfg80211_ftm_responder_stats {int dummy; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_ftm_responder_stats*) ; 
 struct ieee80211_local* FUNC2 (struct wiphy*) ; 

__attribute__((used)) static int
FUNC3(struct wiphy *wiphy,
				  struct net_device *dev,
				  struct cfg80211_ftm_responder_stats *ftm_stats)
{
	struct ieee80211_local *local = FUNC2(wiphy);
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);

	return FUNC1(local, sdata, ftm_stats);
}