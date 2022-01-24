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
struct taskstats {int dummy; } ;
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task_struct*,struct taskstats*) ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(pid_t pid, struct taskstats *stats)
{
	struct task_struct *tsk;

	tsk = FUNC2(pid);
	if (!tsk)
		return -ESRCH;
	FUNC1(FUNC0(), FUNC4(current), tsk, stats);
	FUNC3(tsk);
	return 0;
}