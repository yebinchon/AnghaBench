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
struct thread {int pid_; int tid; scalar_t__ mg; } ;
struct machine {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 struct thread* FUNC0 (struct machine*,int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct machine*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

int FUNC4(struct thread *thread, struct machine *machine)
{
	pid_t pid = thread->pid_;

	if (pid == thread->tid || pid == -1) {
		thread->mg = FUNC2(machine);
	} else {
		struct thread *leader = FUNC0(machine, pid, pid);
		if (leader) {
			thread->mg = FUNC1(leader->mg);
			FUNC3(leader);
		}
	}

	return thread->mg ? 0 : -1;
}