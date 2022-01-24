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
typedef  int /*<<< orphan*/  u64 ;
struct thread {int /*<<< orphan*/  tid; int /*<<< orphan*/  ppid; scalar_t__ comm_set; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct thread*,struct thread*,int) ; 
 char* FUNC1 (struct thread*) ; 
 int FUNC2 (struct thread*,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(struct thread *thread, struct thread *parent, u64 timestamp, bool do_maps_clone)
{
	if (parent->comm_set) {
		const char *comm = FUNC1(parent);
		int err;
		if (!comm)
			return -ENOMEM;
		err = FUNC2(thread, comm, timestamp);
		if (err)
			return err;
	}

	thread->ppid = parent->tid;
	return FUNC0(thread, parent, do_maps_clone);
}