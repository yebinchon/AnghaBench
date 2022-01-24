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
struct cfg80211_chan_def {int /*<<< orphan*/  chan; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct wiphy*,struct cfg80211_chan_def*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,int,int /*<<< orphan*/ ) ; 

bool FUNC3(struct wiphy *wiphy,
				   struct cfg80211_chan_def *chandef,
				   enum nl80211_iftype iftype)
{
	bool check_no_ir;

	FUNC0();

	/*
	 * Under certain conditions suggested by some regulatory bodies a
	 * GO/STA can IR on channels marked with IEEE80211_NO_IR. Set this flag
	 * only if such relaxations are not enabled and the conditions are not
	 * met.
	 */
	check_no_ir = !FUNC2(wiphy, iftype,
						   chandef->chan);

	return FUNC1(wiphy, chandef, iftype, check_no_ir);
}