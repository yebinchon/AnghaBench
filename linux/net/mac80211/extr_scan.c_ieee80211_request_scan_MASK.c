#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct cfg80211_scan_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_sub_if_data*,struct cfg80211_scan_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ieee80211_sub_if_data *sdata,
			   struct cfg80211_scan_request *req)
{
	int res;

	FUNC1(&sdata->local->mtx);
	res = FUNC0(sdata, req);
	FUNC2(&sdata->local->mtx);

	return res;
}