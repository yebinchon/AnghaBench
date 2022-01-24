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
struct task_struct {int flags; } ;

/* Variables and functions */
 int PF_KTHREAD ; 
 int PF_NOFREEZE ; 
 int PF_SUSPEND_TASK ; 
 int /*<<< orphan*/  TIF_MEMDIE ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 scalar_t__ pm_freezing ; 
 scalar_t__ pm_nosig_freezing ; 
 scalar_t__ FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 

bool FUNC2(struct task_struct *p)
{
	if (p->flags & (PF_NOFREEZE | PF_SUSPEND_TASK))
		return false;

	if (FUNC1(p, TIF_MEMDIE))
		return false;

	if (pm_nosig_freezing || FUNC0(p))
		return true;

	if (pm_freezing && !(p->flags & PF_KTHREAD))
		return true;

	return false;
}