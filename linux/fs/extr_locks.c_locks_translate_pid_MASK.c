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
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct file_lock {int fl_pid; } ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file_lock*) ; 
 scalar_t__ FUNC1 (struct file_lock*) ; 
 struct pid* FUNC2 (int,struct pid_namespace*) ; 
 struct pid_namespace init_pid_ns ; 
 int FUNC3 (struct pid*,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static pid_t FUNC6(struct file_lock *fl, struct pid_namespace *ns)
{
	pid_t vnr;
	struct pid *pid;

	if (FUNC0(fl))
		return -1;
	if (FUNC1(fl))
		return fl->fl_pid;
	/*
	 * If the flock owner process is dead and its pid has been already
	 * freed, the translation below won't work, but we still want to show
	 * flock owner pid number in init pidns.
	 */
	if (ns == &init_pid_ns)
		return (pid_t)fl->fl_pid;

	FUNC4();
	pid = FUNC2(fl->fl_pid, &init_pid_ns);
	vnr = FUNC3(pid, ns);
	FUNC5();
	return vnr;
}