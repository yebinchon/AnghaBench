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
struct srcimp_mgr {int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; } ;
struct TYPE_2__ {int msr; } ;
struct srcimp {int /*<<< orphan*/ * idx; TYPE_1__ rsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct srcimp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct srcimp*) ; 

__attribute__((used)) static int FUNC5(struct srcimp_mgr *mgr, struct srcimp *srcimp)
{
	unsigned long flags;
	int i;

	FUNC2(&mgr->mgr_lock, flags);
	for (i = 0; i < srcimp->rsc.msr; i++)
		FUNC1(&mgr->mgr, 1, srcimp->idx[i]);

	FUNC3(&mgr->mgr_lock, flags);
	FUNC4(srcimp);
	FUNC0(srcimp);

	return 0;
}