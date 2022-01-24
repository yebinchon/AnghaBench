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
typedef  int uint64_t ;
struct task_struct {int /*<<< orphan*/  tgid; int /*<<< orphan*/  pid; } ;
struct TYPE_2__ {int* out; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__ data ; 

int FUNC3(void *ctx)
{
	struct task_struct *task = (void *)FUNC2();
	uint64_t pid_tgid = FUNC1();
	int pid, tgid;

	if (FUNC0(&pid, &task->pid) ||
	    FUNC0(&tgid, &task->tgid))
		return 1;

	/* validate pid + tgid matches */
	data.out[0] = (((uint64_t)pid << 32) | tgid) == pid_tgid;

	return 0;
}