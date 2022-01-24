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
struct survey_info {int dummy; } ;
struct net_device {int /*<<< orphan*/  ieee80211_ptr; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_local*,int,struct survey_info*) ; 
 struct ieee80211_local* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy, struct net_device *dev,
				 int idx, struct survey_info *survey)
{
	struct ieee80211_local *local = FUNC1(dev->ieee80211_ptr);

	return FUNC0(local, idx, survey);
}