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
struct task_struct {struct completion* vfork_done; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 scalar_t__ FUNC1 (struct completion*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static void FUNC4(struct task_struct *tsk)
{
	struct completion *vfork;

	FUNC2(tsk);
	vfork = tsk->vfork_done;
	if (FUNC1(vfork)) {
		tsk->vfork_done = NULL;
		FUNC0(vfork);
	}
	FUNC3(tsk);
}