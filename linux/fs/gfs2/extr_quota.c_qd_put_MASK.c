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
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ count; } ;
struct gfs2_quota_data {TYPE_1__ qd_lockref; int /*<<< orphan*/  qd_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  gfs2_qd_lru ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gfs2_quota_data *qd)
{
	if (FUNC1(&qd->qd_lockref))
		return;

	qd->qd_lockref.count = 0;
	FUNC0(&gfs2_qd_lru, &qd->qd_lru);
	FUNC2(&qd->qd_lockref.lock);

}