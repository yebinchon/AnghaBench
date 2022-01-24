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
struct task_struct {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct oom_control {size_t constraint; int /*<<< orphan*/  memcg; int /*<<< orphan*/  nodemask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * oom_constraint_text ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static void FUNC7(struct oom_control *oc, struct task_struct *victim)
{
	/* one line summary of the oom killer context. */
	FUNC5("oom-kill:constraint=%s,nodemask=%*pbl",
			oom_constraint_text[oc->constraint],
			FUNC3(oc->nodemask));
	FUNC0();
	FUNC2(oc->memcg, victim);
	FUNC4(",task=%s,pid=%d,uid=%d\n", victim->comm, victim->pid,
		FUNC1(&init_user_ns, FUNC6(victim)));
}