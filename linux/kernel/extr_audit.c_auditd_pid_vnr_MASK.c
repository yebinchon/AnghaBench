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
struct auditd_connection {int /*<<< orphan*/  pid; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  auditd_conn ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct auditd_connection* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static pid_t FUNC4(void)
{
	pid_t pid;
	const struct auditd_connection *ac;

	FUNC2();
	ac = FUNC1(auditd_conn);
	if (!ac || !ac->pid)
		pid = 0;
	else
		pid = FUNC0(ac->pid);
	FUNC3();

	return pid;
}