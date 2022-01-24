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
struct task_struct {int /*<<< orphan*/  ptracer_cred; struct task_struct* parent; int /*<<< orphan*/  ptraced; int /*<<< orphan*/  ptrace_entry; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct task_struct *child, struct task_struct *new_parent,
		   const struct cred *ptracer_cred)
{
	FUNC0(!FUNC3(&child->ptrace_entry));
	FUNC2(&child->ptrace_entry, &new_parent->ptraced);
	child->parent = new_parent;
	child->ptracer_cred = FUNC1(ptracer_cred);
}