#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  tid; int /*<<< orphan*/  pid_; } ;
struct TYPE_2__ {scalar_t__ tid_list; scalar_t__ pid_list; scalar_t__ comm_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__ symbol_conf ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 

__attribute__((used)) static inline bool FUNC3(struct thread *thread)
{
	if (symbol_conf.comm_list &&
	    !FUNC1(symbol_conf.comm_list, FUNC2(thread))) {
		return true;
	}

	if (symbol_conf.pid_list &&
	    !FUNC0(symbol_conf.pid_list, thread->pid_)) {
		return true;
	}

	if (symbol_conf.tid_list &&
	    !FUNC0(symbol_conf.tid_list, thread->tid)) {
		return true;
	}

	return false;
}