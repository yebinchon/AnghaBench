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
struct ieee80211_local {int /*<<< orphan*/  roc_list; int /*<<< orphan*/  roc_work; int /*<<< orphan*/  hw_roc_done; int /*<<< orphan*/  hw_roc_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieee80211_hw_roc_done ; 
 int /*<<< orphan*/  ieee80211_hw_roc_start ; 
 int /*<<< orphan*/  ieee80211_roc_work ; 

void FUNC3(struct ieee80211_local *local)
{
	FUNC2(&local->hw_roc_start, ieee80211_hw_roc_start);
	FUNC2(&local->hw_roc_done, ieee80211_hw_roc_done);
	FUNC0(&local->roc_work, ieee80211_roc_work);
	FUNC1(&local->roc_list);
}