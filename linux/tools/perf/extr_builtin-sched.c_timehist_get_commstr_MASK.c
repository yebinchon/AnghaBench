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
struct thread {scalar_t__ tid; scalar_t__ pid_; } ;
typedef  int /*<<< orphan*/  str ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int comm_width ; 
 int FUNC0 (char*,int,char*,char const*,...) ; 
 char* FUNC1 (struct thread*) ; 

__attribute__((used)) static char *FUNC2(struct thread *thread)
{
	static char str[32];
	const char *comm = FUNC1(thread);
	pid_t tid = thread->tid;
	pid_t pid = thread->pid_;
	int n;

	if (pid == 0)
		n = FUNC0(str, sizeof(str), "%s", comm);

	else if (tid != pid)
		n = FUNC0(str, sizeof(str), "%s[%d/%d]", comm, tid, pid);

	else
		n = FUNC0(str, sizeof(str), "%s[%d]", comm, tid);

	if (n > comm_width)
		comm_width = n;

	return str;
}