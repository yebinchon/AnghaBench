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
struct task_struct {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,char const*) ; 

void FUNC5(struct task_struct *tsk, const char *buf, bool exec)
{
	FUNC2(tsk);
	FUNC4(tsk, buf);
	FUNC1(tsk->comm, buf, sizeof(tsk->comm));
	FUNC3(tsk);
	FUNC0(tsk, exec);
}