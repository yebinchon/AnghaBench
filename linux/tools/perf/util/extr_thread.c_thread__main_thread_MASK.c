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
struct machine {int dummy; } ;

/* Variables and functions */
 struct thread* FUNC0 (struct machine*,int,int) ; 
 struct thread* FUNC1 (struct thread*) ; 

struct thread *FUNC2(struct machine *machine, struct thread *thread)
{
	if (thread->pid_ == thread->tid)
		return FUNC1(thread);

	if (thread->pid_ == -1)
		return NULL;

	return FUNC0(machine, thread->pid_, thread->pid_);
}