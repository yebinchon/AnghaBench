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
struct amixer_mgr {int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; } ;
struct TYPE_2__ {int msr; } ;
struct amixer {int /*<<< orphan*/ * idx; TYPE_1__ rsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amixer*) ; 
 int /*<<< orphan*/  FUNC1 (struct amixer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct amixer_mgr *mgr, struct amixer *amixer)
{
	unsigned long flags;
	int i;

	FUNC3(&mgr->mgr_lock, flags);
	for (i = 0; i < amixer->rsc.msr; i++)
		FUNC2(&mgr->mgr, 1, amixer->idx[i]);

	FUNC4(&mgr->mgr_lock, flags);
	FUNC0(amixer);
	FUNC1(amixer);

	return 0;
}