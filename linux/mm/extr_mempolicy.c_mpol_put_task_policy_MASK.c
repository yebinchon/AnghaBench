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
struct task_struct {struct mempolicy* mempolicy; } ;
struct mempolicy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

void FUNC3(struct task_struct *task)
{
	struct mempolicy *pol;

	FUNC1(task);
	pol = task->mempolicy;
	task->mempolicy = NULL;
	FUNC2(task);
	FUNC0(pol);
}