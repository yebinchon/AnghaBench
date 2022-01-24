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
struct torture_random_state {int dummy; } ;
struct rt_read_seg {int rt_readstate; } ;
struct TYPE_2__ {int (* readlock ) () ;int /*<<< orphan*/  (* read_delay ) (struct torture_random_state*,struct rt_read_seg*) ;int /*<<< orphan*/  (* readunlock ) (int) ;} ;

/* Variables and functions */
 int RCUTORTURE_RDR_BH ; 
 int RCUTORTURE_RDR_IRQ ; 
 int RCUTORTURE_RDR_MASK ; 
 int RCUTORTURE_RDR_PREEMPT ; 
 int RCUTORTURE_RDR_RBH ; 
 int RCUTORTURE_RDR_RCU ; 
 int RCUTORTURE_RDR_SCHED ; 
 int RCUTORTURE_RDR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct torture_random_state*,struct rt_read_seg*) ; 

__attribute__((used)) static void FUNC14(int *readstate, int newstate,
				  struct torture_random_state *trsp,
				  struct rt_read_seg *rtrsp)
{
	int idxnew = -1;
	int idxold = *readstate;
	int statesnew = ~*readstate & newstate;
	int statesold = *readstate & ~newstate;

	FUNC0(idxold < 0);
	FUNC0((idxold >> RCUTORTURE_RDR_SHIFT) > 1);
	rtrsp->rt_readstate = newstate;

	/* First, put new protection in place to avoid critical-section gap. */
	if (statesnew & RCUTORTURE_RDR_BH)
		FUNC1();
	if (statesnew & RCUTORTURE_RDR_IRQ)
		FUNC3();
	if (statesnew & RCUTORTURE_RDR_PREEMPT)
		FUNC5();
	if (statesnew & RCUTORTURE_RDR_RBH)
		FUNC7();
	if (statesnew & RCUTORTURE_RDR_SCHED)
		FUNC8();
	if (statesnew & RCUTORTURE_RDR_RCU)
		idxnew = cur_ops->readlock() << RCUTORTURE_RDR_SHIFT;

	/* Next, remove old protection, irq first due to bh conflict. */
	if (statesold & RCUTORTURE_RDR_IRQ)
		FUNC4();
	if (statesold & RCUTORTURE_RDR_BH)
		FUNC2();
	if (statesold & RCUTORTURE_RDR_PREEMPT)
		FUNC6();
	if (statesold & RCUTORTURE_RDR_RBH)
		FUNC9();
	if (statesold & RCUTORTURE_RDR_SCHED)
		FUNC10();
	if (statesold & RCUTORTURE_RDR_RCU)
		cur_ops->readunlock(idxold >> RCUTORTURE_RDR_SHIFT);

	/* Delay if neither beginning nor end and there was a change. */
	if ((statesnew || statesold) && *readstate && newstate)
		cur_ops->read_delay(trsp, rtrsp);

	/* Update the reader state. */
	if (idxnew == -1)
		idxnew = idxold & ~RCUTORTURE_RDR_MASK;
	FUNC0(idxnew < 0);
	FUNC0((idxnew >> RCUTORTURE_RDR_SHIFT) > 1);
	*readstate = idxnew | newstate;
	FUNC0((*readstate >> RCUTORTURE_RDR_SHIFT) < 0);
	FUNC0((*readstate >> RCUTORTURE_RDR_SHIFT) > 1);
}