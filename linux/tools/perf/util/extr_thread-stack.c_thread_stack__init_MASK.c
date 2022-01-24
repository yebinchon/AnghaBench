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
struct thread_stack {unsigned long long kernel_start; struct call_return_processor* crp; int /*<<< orphan*/  rstate; } ;
struct thread {TYPE_1__* mg; } ;
struct machine {int /*<<< orphan*/  env; } ;
struct call_return_processor {int dummy; } ;
struct TYPE_2__ {struct machine* machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_RETPOLINE_POSSIBLE ; 
 unsigned long long FUNC0 (struct machine*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int FUNC3 (struct thread_stack*) ; 

__attribute__((used)) static int FUNC4(struct thread_stack *ts, struct thread *thread,
			      struct call_return_processor *crp)
{
	int err;

	err = FUNC3(ts);
	if (err)
		return err;

	if (thread->mg && thread->mg->machine) {
		struct machine *machine = thread->mg->machine;
		const char *arch = FUNC1(machine->env);

		ts->kernel_start = FUNC0(machine);
		if (!FUNC2(arch, "x86"))
			ts->rstate = X86_RETPOLINE_POSSIBLE;
	} else {
		ts->kernel_start = 1ULL << 63;
	}
	ts->crp = crp;

	return 0;
}