#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  expires; } ;
struct TYPE_5__ {TYPE_3__ timer; } ;
struct TYPE_6__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_sub_if_data *sdata,
		      unsigned long timeout)
{
	FUNC1(sdata);

	if (!FUNC3(&sdata->u.mgd.timer) ||
	    FUNC2(timeout, sdata->u.mgd.timer.expires))
		FUNC0(&sdata->u.mgd.timer, timeout);
}