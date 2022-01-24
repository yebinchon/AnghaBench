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
struct pid_namespace {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct pid_namespace* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct task_struct*,int) ; 

pid_t FUNC8(struct task_struct *task, enum pid_type type,
			struct pid_namespace *ns)
{
	pid_t nr = 0;

	FUNC4();
	if (!ns)
		ns = FUNC6(current);
	if (FUNC0(FUNC1(task)))
		nr = FUNC2(FUNC3(*FUNC7(task, type)), ns);
	FUNC5();

	return nr;
}