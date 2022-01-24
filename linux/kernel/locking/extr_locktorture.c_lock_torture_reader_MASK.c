#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lock_stress_stats {int /*<<< orphan*/  n_lock_acquired; int /*<<< orphan*/  n_lock_fail; } ;
struct TYPE_4__ {TYPE_1__* cur_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* readunlock ) () ;int /*<<< orphan*/  (* read_delay ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* readlock ) () ;} ;
typedef  int /*<<< orphan*/  DEFINE_TORTURE_RANDOM ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_NICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 TYPE_2__ cxt ; 
 int lock_is_read_held ; 
 int /*<<< orphan*/  lock_is_write_held ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	struct lock_stress_stats *lrsp = arg;
	static DEFINE_TORTURE_RANDOM(rand);

	FUNC0("lock_torture_reader task started");
	FUNC3(current, MAX_NICE);

	do {
		if ((FUNC10(&rand) & 0xfffff) == 0)
			FUNC2(1);

		cxt.cur_ops->readlock();
		lock_is_read_held = 1;
		if (FUNC1(lock_is_write_held))
			lrsp->n_lock_fail++; /* rare, but... */

		lrsp->n_lock_acquired++;
		cxt.cur_ops->read_delay(&rand);
		lock_is_read_held = 0;
		cxt.cur_ops->readunlock();

		FUNC7("lock_torture_reader");
	} while (!FUNC9());
	FUNC8("lock_torture_reader");
	return 0;
}