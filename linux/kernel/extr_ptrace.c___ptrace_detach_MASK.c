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
struct task_struct {scalar_t__ exit_state; int /*<<< orphan*/  sighand; int /*<<< orphan*/  exit_signal; int /*<<< orphan*/  real_parent; } ;

/* Variables and functions */
 scalar_t__ EXIT_DEAD ; 
 scalar_t__ EXIT_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct task_struct*) ; 
 int FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct task_struct*) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static bool FUNC7(struct task_struct *tracer, struct task_struct *p)
{
	bool dead;

	FUNC0(p);

	if (p->exit_state != EXIT_ZOMBIE)
		return false;

	dead = !FUNC6(p);

	if (!dead && FUNC5(p)) {
		if (!FUNC4(p->real_parent, tracer))
			dead = FUNC2(p, p->exit_signal);
		else if (FUNC3(tracer->sighand)) {
			FUNC1(p, tracer);
			dead = true;
		}
	}
	/* Mark it as in the process of being reaped. */
	if (dead)
		p->exit_state = EXIT_DEAD;
	return dead;
}