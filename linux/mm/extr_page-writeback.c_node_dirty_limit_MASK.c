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
struct pglist_data {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PF_LESS_THROTTLE ; 
 struct task_struct* current ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 (struct pglist_data*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 scalar_t__ vm_dirty_bytes ; 
 unsigned long vm_dirty_ratio ; 

__attribute__((used)) static unsigned long FUNC4(struct pglist_data *pgdat)
{
	unsigned long node_memory = FUNC2(pgdat);
	struct task_struct *tsk = current;
	unsigned long dirty;

	if (vm_dirty_bytes)
		dirty = FUNC0(vm_dirty_bytes, PAGE_SIZE) *
			node_memory / FUNC1();
	else
		dirty = vm_dirty_ratio * node_memory / 100;

	if (tsk->flags & PF_LESS_THROTTLE || FUNC3(tsk))
		dirty += dirty / 4;

	return dirty;
}