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
struct task_struct {scalar_t__ pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  PR_GET_NAME ; 
 int /*<<< orphan*/  __NR_gettid ; 
 struct task_struct current_obj ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

struct task_struct *FUNC2(void)
{
	if (current_obj.pid == 0) {
		/* Makes lockdep output pretty */
		FUNC0(PR_GET_NAME, current_obj.comm);
		current_obj.pid = FUNC1(__NR_gettid);
	}

	return &current_obj;
}