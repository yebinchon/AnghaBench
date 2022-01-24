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
struct cfg80211_chan_def {int /*<<< orphan*/  center_freq2; int /*<<< orphan*/  center_freq1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct cfg80211_chan_def const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_chan_def const*) ; 
 unsigned int FUNC3 (struct wiphy*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 

unsigned int
FUNC5(struct wiphy *wiphy,
			      const struct cfg80211_chan_def *chandef)
{
	int width;
	unsigned int t1 = 0, t2 = 0;

	if (FUNC0(!FUNC2(chandef)))
		return 0;

	width = FUNC1(chandef);
	if (width < 0)
		return 0;

	t1 = FUNC3(wiphy,
					     chandef->center_freq1,
					     width);

	if (!chandef->center_freq2)
		return t1;

	t2 = FUNC3(wiphy,
					     chandef->center_freq2,
					     width);

	return FUNC4(t1, t2);
}