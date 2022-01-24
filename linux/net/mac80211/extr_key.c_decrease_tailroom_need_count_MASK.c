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
struct ieee80211_sub_if_data {int crypto_tx_tailroom_needed_cnt; int /*<<< orphan*/  local; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_sub_if_data *sdata,
					 int delta)
{
	FUNC1(sdata->local);

	FUNC0(sdata->crypto_tx_tailroom_needed_cnt < delta);

	FUNC2(sdata, -delta);
	sdata->crypto_tx_tailroom_needed_cnt -= delta;
}