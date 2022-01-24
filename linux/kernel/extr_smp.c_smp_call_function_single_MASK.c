#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  smp_call_func_t ;
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ call_single_data_t ;

/* Variables and functions */
 int CSD_FLAG_LOCK ; 
 int CSD_FLAG_SYNCHRONOUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  csd_data ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int,TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  oops_in_progress ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(int cpu, smp_call_func_t func, void *info,
			     int wait)
{
	call_single_data_t *csd;
	call_single_data_t csd_stack = {
		.flags = CSD_FLAG_LOCK | CSD_FLAG_SYNCHRONOUS,
	};
	int this_cpu;
	int err;

	/*
	 * prevent preemption and reschedule on another processor,
	 * as well as CPU removal
	 */
	this_cpu = FUNC5();

	/*
	 * Can deadlock when called with interrupts disabled.
	 * We allow cpu's that are not yet online though, as no one else can
	 * send smp call function interrupt to this cpu and as such deadlocks
	 * can't happen.
	 */
	FUNC0(FUNC1(this_cpu) && FUNC7()
		     && !oops_in_progress);

	/*
	 * When @wait we can deadlock when we interrupt between llist_add() and
	 * arch_send_call_function_ipi*(); when !@wait we can deadlock due to
	 * csd_lock() on because the interrupt context uses the same csd
	 * storage.
	 */
	FUNC0(!FUNC6());

	csd = &csd_stack;
	if (!wait) {
		csd = FUNC9(&csd_data);
		FUNC2(csd);
	}

	err = FUNC4(cpu, csd, func, info);

	if (wait)
		FUNC3(csd);

	FUNC8();

	return err;
}