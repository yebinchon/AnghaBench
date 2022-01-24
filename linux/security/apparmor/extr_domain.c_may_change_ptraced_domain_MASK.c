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
 int /*<<< orphan*/  PTRACE_MODE_ATTACH ; 
 struct aa_label* FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct aa_label*,struct aa_label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  current ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct aa_label*) ; 

__attribute__((used)) static int FUNC7(struct aa_label *to_label,
				     const char **info)
{
	struct task_struct *tracer;
	struct aa_label *tracerl = NULL;
	int error = 0;

	FUNC4();
	tracer = FUNC3(current);
	if (tracer)
		/* released below */
		tracerl = FUNC0(tracer);

	/* not ptraced */
	if (!tracer || FUNC6(tracerl))
		goto out;

	error = FUNC1(tracerl, to_label, PTRACE_MODE_ATTACH);

out:
	FUNC5();
	FUNC2(tracerl);

	if (error)
		*info = "ptrace prevents transition";
	return error;
}