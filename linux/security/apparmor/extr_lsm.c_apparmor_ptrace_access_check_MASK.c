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
struct task_struct {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AA_PTRACE_READ ; 
 int /*<<< orphan*/  AA_PTRACE_TRACE ; 
 unsigned int PTRACE_MODE_READ ; 
 struct aa_label* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 struct aa_label* FUNC2 (struct task_struct*) ; 
 int FUNC3 (struct aa_label*,struct aa_label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*) ; 

__attribute__((used)) static int FUNC5(struct task_struct *child,
					unsigned int mode)
{
	struct aa_label *tracer, *tracee;
	int error;

	tracer = FUNC0();
	tracee = FUNC2(child);
	error = FUNC3(tracer, tracee,
			(mode & PTRACE_MODE_READ) ? AA_PTRACE_READ
						  : AA_PTRACE_TRACE);
	FUNC4(tracee);
	FUNC1(tracer);

	return error;
}