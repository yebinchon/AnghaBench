#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  chswitch_work; } ;
struct TYPE_9__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__* local; } ;
struct TYPE_6__ {int /*<<< orphan*/  chswitch_timer; } ;
struct TYPE_10__ {TYPE_1__ mgd; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* sdata ; 
 TYPE_5__ u ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct ieee80211_sub_if_data *sdata =
		FUNC0(sdata, t, u.mgd.chswitch_timer);

	FUNC1(&sdata->local->hw, &sdata->u.mgd.chswitch_work);
}