#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_3__ {int bp_delayed; scalar_t__ bp_delay; } ;
typedef  TYPE_1__ kdb_bp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC4(struct pt_regs *regs, kdb_bp_t *bp)
{
	if (FUNC0(BP))
		FUNC2("regs->ip = 0x%lx\n", FUNC1(regs));

	/*
	 * Setup single step
	 */
	FUNC3(regs);

	/*
	 * Reset delay attribute
	 */
	bp->bp_delay = 0;
	bp->bp_delayed = 1;
}