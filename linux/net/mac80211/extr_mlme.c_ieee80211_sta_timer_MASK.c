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
struct timer_list {int dummy; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  work; TYPE_2__* local; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {TYPE_1__ mgd; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* sdata ; 
 TYPE_3__ u ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct ieee80211_sub_if_data *sdata =
		FUNC0(sdata, t, u.mgd.timer);

	FUNC1(&sdata->local->hw, &sdata->work);
}