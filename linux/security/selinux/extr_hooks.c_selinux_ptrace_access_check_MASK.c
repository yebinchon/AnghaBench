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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE__READ ; 
 int /*<<< orphan*/  PROCESS__PTRACE ; 
 unsigned int PTRACE_MODE_READ ; 
 int /*<<< orphan*/  SECCLASS_FILE ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(struct task_struct *child,
				     unsigned int mode)
{
	u32 sid = FUNC1();
	u32 csid = FUNC2(child);

	if (mode & PTRACE_MODE_READ)
		return FUNC0(&selinux_state,
				    sid, csid, SECCLASS_FILE, FILE__READ, NULL);

	return FUNC0(&selinux_state,
			    sid, csid, SECCLASS_PROCESS, PROCESS__PTRACE, NULL);
}