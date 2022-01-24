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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kdb_current_regs ; 
 struct task_struct* kdb_current_task ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 

void FUNC3(struct task_struct *p)
{
	kdb_current_task = p;

	if (FUNC2(p)) {
		kdb_current_regs = FUNC0(FUNC1(p));
		return;
	}
	kdb_current_regs = NULL;
}