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
struct ftrace_ops {int dummy; } ;

/* Variables and functions */
 scalar_t__ MCOUNT_INSN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  disable_stack_tracer ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(unsigned long ip, unsigned long parent_ip,
		 struct ftrace_ops *op, struct pt_regs *pt_regs)
{
	unsigned long stack;

	FUNC4();

	/* no atomic needed, we only modify this variable by this cpu */
	FUNC1(disable_stack_tracer);
	if (FUNC2(disable_stack_tracer) != 1)
		goto out;

	/* If rcu is not watching, then save stack trace can fail */
	if (!FUNC6())
		goto out;

	ip += MCOUNT_INSN_SIZE;

	FUNC3(ip, &stack);

 out:
	FUNC0(disable_stack_tracer);
	/* prevent recursion in schedule */
	FUNC5();
}