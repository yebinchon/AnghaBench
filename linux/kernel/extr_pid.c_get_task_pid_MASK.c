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
struct pid {int dummy; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 struct pid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (struct task_struct*,int) ; 

struct pid *FUNC5(struct task_struct *task, enum pid_type type)
{
	struct pid *pid;
	FUNC2();
	pid = FUNC0(FUNC1(*FUNC4(task, type)));
	FUNC3();
	return pid;
}