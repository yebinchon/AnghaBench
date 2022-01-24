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
struct ftrace_ops {int flags; int /*<<< orphan*/  (* func ) (unsigned long,unsigned long,struct ftrace_ops*,struct pt_regs*) ;} ;

/* Variables and functions */
 int FTRACE_OPS_FL_RCU ; 
 int /*<<< orphan*/  TRACE_LIST_MAX ; 
 int /*<<< orphan*/  TRACE_LIST_START ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long,struct ftrace_ops*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(unsigned long ip, unsigned long parent_ip,
				   struct ftrace_ops *op, struct pt_regs *regs)
{
	int bit;

	if ((op->flags & FTRACE_OPS_FL_RCU) && !FUNC2())
		return;

	bit = FUNC5(TRACE_LIST_START, TRACE_LIST_MAX);
	if (bit < 0)
		return;

	FUNC0();

	op->func(ip, parent_ip, op, regs);

	FUNC1();
	FUNC4(bit);
}