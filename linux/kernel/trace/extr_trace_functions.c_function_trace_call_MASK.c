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
 int /*<<< orphan*/  TRACE_FTRACE_MAX ; 
 int /*<<< orphan*/  TRACE_FTRACE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct trace_array_cpu* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(unsigned long ip, unsigned long parent_ip,
		    struct ftrace_ops *op, struct pt_regs *pt_regs)
{
	struct trace_array *tr = op->private;
	struct trace_array_cpu *data;
	unsigned long flags;
	int bit;
	int cpu;
	int pc;

	if (FUNC10(!tr->function_enabled))
		return;

	pc = FUNC3();
	FUNC4();

	bit = FUNC9(TRACE_FTRACE_START, TRACE_FTRACE_MAX);
	if (bit < 0)
		goto out;

	cpu = FUNC6();
	data = FUNC2(tr->trace_buffer.data, cpu);
	if (!FUNC0(&data->disabled)) {
		FUNC1(flags);
		FUNC8(tr, ip, parent_ip, flags, pc);
	}
	FUNC7(bit);

 out:
	FUNC5();
}