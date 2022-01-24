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
struct TYPE_6__ {int /*<<< orphan*/  beacon; } ;
struct TYPE_5__ {TYPE_3__ mesh; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtx; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; TYPE_1__ wdev; } ;
struct beacon_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct beacon_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct beacon_data* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static int
FUNC4(struct ieee80211_sub_if_data *sdata)
{
	struct beacon_data *old_bcn;
	int ret;

	old_bcn = FUNC3(sdata->u.mesh.beacon,
					    FUNC2(&sdata->wdev.mtx));
	ret = FUNC0(&sdata->u.mesh);
	if (ret)
		/* just reuse old beacon */
		return ret;

	if (old_bcn)
		FUNC1(old_bcn, rcu_head);
	return 0;
}