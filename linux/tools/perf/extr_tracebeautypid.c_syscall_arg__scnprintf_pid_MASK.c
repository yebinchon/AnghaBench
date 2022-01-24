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
struct trace {int /*<<< orphan*/  host; } ;
struct thread {scalar_t__ comm_set; } ;
struct syscall_arg {int val; struct trace* trace; } ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC1 (char*,size_t,char*,int) ; 
 int FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

size_t FUNC5(char *bf, size_t size, struct syscall_arg *arg)
{
	int pid = arg->val;
	struct trace *trace = arg->trace;
	size_t printed = FUNC1(bf, size, "%d", pid);
	struct thread *thread = FUNC0(trace->host, pid, pid);

	if (thread != NULL) {
		if (!thread->comm_set)
			FUNC4(thread);

		if (thread->comm_set)
			printed += FUNC1(bf + printed, size - printed,
					     " (%s)", FUNC2(thread));
		FUNC3(thread);
	}

	return printed;
}