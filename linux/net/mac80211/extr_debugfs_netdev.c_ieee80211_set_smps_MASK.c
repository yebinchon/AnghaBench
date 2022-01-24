#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {TYPE_3__* wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
typedef  enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;
struct TYPE_6__ {int features; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IEEE80211_SMPS_AUTOMATIC ; 
 int IEEE80211_SMPS_DYNAMIC ; 
 int IEEE80211_SMPS_STATIC ; 
 int NL80211_FEATURE_DYNAMIC_SMPS ; 
 int NL80211_FEATURE_STATIC_SMPS ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int FUNC0 (struct ieee80211_sub_if_data*,int) ; 
 int FUNC1 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_sub_if_data *sdata,
			      enum ieee80211_smps_mode smps_mode)
{
	struct ieee80211_local *local = sdata->local;
	int err;

	if (!(local->hw.wiphy->features & NL80211_FEATURE_STATIC_SMPS) &&
	    smps_mode == IEEE80211_SMPS_STATIC)
		return -EINVAL;

	/* auto should be dynamic if in PS mode */
	if (!(local->hw.wiphy->features & NL80211_FEATURE_DYNAMIC_SMPS) &&
	    (smps_mode == IEEE80211_SMPS_DYNAMIC ||
	     smps_mode == IEEE80211_SMPS_AUTOMATIC))
		return -EINVAL;

	if (sdata->vif.type != NL80211_IFTYPE_STATION &&
	    sdata->vif.type != NL80211_IFTYPE_AP)
		return -EOPNOTSUPP;

	FUNC2(sdata);
	if (sdata->vif.type == NL80211_IFTYPE_STATION)
		err = FUNC1(sdata, smps_mode);
	else
		err = FUNC0(sdata, smps_mode);
	FUNC3(sdata);

	return err;
}