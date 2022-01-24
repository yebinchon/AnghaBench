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
struct cfg80211_chan_def {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int FUNC0 (struct wiphy*,struct cfg80211_chan_def*,int,int) ; 

bool FUNC1(struct wiphy *wiphy,
			     struct cfg80211_chan_def *chandef,
			     enum nl80211_iftype iftype)
{
	return FUNC0(wiphy, chandef, iftype, true);
}