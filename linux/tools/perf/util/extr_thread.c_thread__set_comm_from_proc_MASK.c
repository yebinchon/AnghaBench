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
struct thread {int pid_; int tid; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char**,size_t*) ; 
 int FUNC1 (char*,int,char*,int,int) ; 
 int FUNC2 (struct thread*,char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct thread *thread)
{
	char path[64];
	char *comm = NULL;
	size_t sz;
	int err = -1;

	if (!(FUNC1(path, sizeof(path), "%d/task/%d/comm",
		       thread->pid_, thread->tid) >= (int)sizeof(path)) &&
	    FUNC0(path, &comm, &sz) == 0) {
		comm[sz - 1] = '\0';
		err = FUNC2(thread, comm, 0);
	}

	return err;
}