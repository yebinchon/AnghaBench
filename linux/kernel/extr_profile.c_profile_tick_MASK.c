#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pt_regs {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pt_regs* FUNC1 () ; 
 int /*<<< orphan*/ * prof_cpu_mask ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 

void FUNC6(int type)
{
	struct pt_regs *regs = FUNC1();

	if (!FUNC5(regs) && prof_cpu_mask != NULL &&
	    FUNC0(FUNC4(), prof_cpu_mask))
		FUNC2(type, (void *)FUNC3(regs));
}