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
struct task_struct {struct task_struct* real_parent; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_SIG_PRIV ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pid*) ; 
 scalar_t__ FUNC1 (struct pid*) ; 
 struct pid* FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (struct pid*,struct task_struct*) ; 

__attribute__((used)) static void
FUNC5(struct task_struct *tsk, struct task_struct *parent)
{
	struct pid *pgrp = FUNC2(tsk);
	struct task_struct *ignored_task = tsk;

	if (!parent)
		/* exit: our father is in a different pgrp than
		 * we are and we were the only connection outside.
		 */
		parent = tsk->real_parent;
	else
		/* reparent: our child is in a different pgrp than
		 * we are, and it was the only connection outside.
		 */
		ignored_task = NULL;

	if (FUNC2(parent) != pgrp &&
	    FUNC3(parent) == FUNC3(tsk) &&
	    FUNC4(pgrp, ignored_task) &&
	    FUNC1(pgrp)) {
		FUNC0(SIGHUP, SEND_SIG_PRIV, pgrp);
		FUNC0(SIGCONT, SEND_SIG_PRIV, pgrp);
	}
}