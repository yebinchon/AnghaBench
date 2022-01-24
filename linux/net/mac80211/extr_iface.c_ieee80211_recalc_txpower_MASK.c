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
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_CHANGED_TXPOWER ; 
 scalar_t__ FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ieee80211_sub_if_data*) ; 

void FUNC3(struct ieee80211_sub_if_data *sdata,
			      bool update_bss)
{
	if (FUNC0(sdata) ||
	    (update_bss && FUNC2(sdata)))
		FUNC1(sdata, BSS_CHANGED_TXPOWER);
}