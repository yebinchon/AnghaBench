#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {scalar_t__ oom_score_adj; } ;

/* Variables and functions */
 scalar_t__ OOM_SCORE_ADJ_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(struct task_struct *task, void *message)
{
	if (task->signal->oom_score_adj != OOM_SCORE_ADJ_MIN &&
	    !FUNC2(task)) {
		FUNC1(task);
		FUNC0(task, message);
	}
	return 0;
}