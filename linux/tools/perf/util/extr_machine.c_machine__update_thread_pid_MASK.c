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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct machine*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 

__attribute__((used)) static void FUNC7(struct machine *machine,
				       struct thread *th, pid_t pid)
{
	struct thread *leader;

	if (pid == th->pid_ || pid == -1 || th->pid_ != -1)
		return;

	th->pid_ = pid;

	if (th->pid_ == th->tid)
		return;

	leader = FUNC0(machine, th->pid_, th->pid_);
	if (!leader)
		goto out_err;

	if (!leader->mg)
		leader->mg = FUNC3(machine);

	if (!leader->mg)
		goto out_err;

	if (th->mg == leader->mg)
		return;

	if (th->mg) {
		/*
		 * Maps are created from MMAP events which provide the pid and
		 * tid.  Consequently there never should be any maps on a thread
		 * with an unknown pid.  Just print an error if there are.
		 */
		if (!FUNC1(th->mg))
			FUNC5("Discarding thread maps for %d:%d\n",
			       th->pid_, th->tid);
		FUNC4(th->mg);
	}

	th->mg = FUNC2(leader->mg);
out_put:
	FUNC6(leader);
	return;
out_err:
	FUNC5("Failed to join map groups for %d:%d\n", th->pid_, th->tid);
	goto out_put;
}