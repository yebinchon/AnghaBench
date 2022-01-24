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
struct auditd_connection {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  auditd_conn ; 
 struct auditd_connection* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 

int FUNC4(struct task_struct *task)
{
	int rc;
	struct auditd_connection *ac;

	FUNC1();
	ac = FUNC0(auditd_conn);
	rc = (ac && ac->pid == FUNC3(task) ? 1 : 0);
	FUNC2();

	return rc;
}