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
struct warn_args {int /*<<< orphan*/  args; int /*<<< orphan*/  fmt; } ;
struct pt_regs {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKDEP_STILL_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ panic_on_warn ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(const char *file, int line, void *caller, unsigned taint,
	    struct pt_regs *regs, struct warn_args *args)
{
	FUNC1();

	if (file)
		FUNC4("WARNING: CPU: %d PID: %d at %s:%d %pS\n",
			FUNC8(), current->pid, file, line,
			caller);
	else
		FUNC4("WARNING: CPU: %d PID: %d at %pS\n",
			FUNC8(), current->pid, caller);

	if (args)
		FUNC10(args->fmt, args->args);

	if (panic_on_warn) {
		/*
		 * This thread may hit another WARN() in the panic path.
		 * Resetting this prevents additional WARN() from panicking the
		 * system on this thread.  Other threads are blocked by the
		 * panic_mutex in panic().
		 */
		panic_on_warn = 0;
		FUNC3("panic_on_warn set ...\n");
	}

	FUNC6();

	if (regs)
		FUNC9(regs);
	else
		FUNC2();

	FUNC5(current);

	FUNC7();

	/* Just a warning, don't kill lockdep. */
	FUNC0(taint, LOCKDEP_STILL_OK);
}