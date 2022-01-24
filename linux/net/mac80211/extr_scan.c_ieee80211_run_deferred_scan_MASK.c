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
struct ieee80211_local {int /*<<< orphan*/  scan_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  mtx; int /*<<< orphan*/  scan_sdata; scalar_t__ scanning; int /*<<< orphan*/  scan_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct ieee80211_local *local)
{
	FUNC2(&local->mtx);

	if (!local->scan_req || local->scanning)
		return;

	if (!FUNC0(local,
				FUNC4(
					local->scan_sdata,
					FUNC3(&local->mtx))))
		return;

	FUNC1(&local->hw, &local->scan_work,
				     FUNC5(0));
}