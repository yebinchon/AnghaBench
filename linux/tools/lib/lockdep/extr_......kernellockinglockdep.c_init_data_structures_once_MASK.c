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
struct TYPE_7__ {TYPE_1__* pf; int /*<<< orphan*/  rcu_head; } ;
struct TYPE_6__ {int /*<<< orphan*/  locks_before; int /*<<< orphan*/  locks_after; int /*<<< orphan*/  lock_entry; } ;
struct TYPE_5__ {int /*<<< orphan*/  zapped; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SYSTEM_SCHEDULING ; 
 TYPE_3__ delayed_free ; 
 int /*<<< orphan*/  free_lock_classes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* lock_classes ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC5(void)
{
	static bool ds_initialized, rcu_head_initialized;
	int i;

	if (FUNC3(rcu_head_initialized))
		return;

	if (system_state >= SYSTEM_SCHEDULING) {
		FUNC2(&delayed_free.rcu_head);
		rcu_head_initialized = true;
	}

	if (ds_initialized)
		return;

	ds_initialized = true;

	FUNC1(&delayed_free.pf[0].zapped);
	FUNC1(&delayed_free.pf[1].zapped);

	for (i = 0; i < FUNC0(lock_classes); i++) {
		FUNC4(&lock_classes[i].lock_entry, &free_lock_classes);
		FUNC1(&lock_classes[i].locks_after);
		FUNC1(&lock_classes[i].locks_before);
	}
}