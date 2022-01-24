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
struct trace_array_cpu {int /*<<< orphan*/  disabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct trace_array {TYPE_1__ trace_buffer; int /*<<< orphan*/  function_enabled; } ;
struct pt_regs {int dummy; } ;
struct ftrace_ops {struct trace_array* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  STACK_SKIP ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 struct trace_array_cpu* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(unsigned long ip, unsigned long parent_ip,
			  struct ftrace_ops *op, struct pt_regs *pt_regs)
{
	struct trace_array *tr = op->private;
	struct trace_array_cpu *data;
	unsigned long flags;
	long disabled;
	int cpu;
	int pc;

	if (FUNC10(!tr->function_enabled))
		return;

	/*
	 * Need to use raw, since this must be called before the
	 * recursive protection is performed.
	 */
	FUNC5(flags);
	cpu = FUNC8();
	data = FUNC6(tr->trace_buffer.data, cpu);
	disabled = FUNC2(&data->disabled);

	if (FUNC3(disabled == 1)) {
		pc = FUNC7();
		FUNC9(tr, ip, parent_ip, flags, pc);
		FUNC0(tr, flags, STACK_SKIP, pc);
	}

	FUNC1(&data->disabled);
	FUNC4(flags);
}