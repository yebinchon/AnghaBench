#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct linux_binprm {int /*<<< orphan*/  rlim_stack; } ;
struct TYPE_4__ {int /*<<< orphan*/  group_leader; TYPE_1__* signal; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rlim; } ;

/* Variables and functions */
 size_t RLIMIT_STACK ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct linux_binprm *bprm)
{
	/* Store any stack rlimit changes before starting thread. */
	FUNC0(current->group_leader);
	current->signal->rlim[RLIMIT_STACK] = bprm->rlim_stack;
	FUNC1(current->group_leader);
}