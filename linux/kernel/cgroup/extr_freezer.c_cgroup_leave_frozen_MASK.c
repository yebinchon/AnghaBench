#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cgroup {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int frozen; int jobctl; TYPE_1__* sighand; } ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_FREEZE ; 
 int JOBCTL_TRAP_FREEZE ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  css_set_lock ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cgroup* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(bool always_leave)
{
	struct cgroup *cgrp;

	FUNC5(&css_set_lock);
	cgrp = FUNC8(current);
	if (always_leave || !FUNC9(CGRP_FREEZE, &cgrp->flags)) {
		FUNC1(cgrp);
		FUNC2(cgrp);
		FUNC0(!current->frozen);
		current->frozen = false;
	} else if (!(current->jobctl & JOBCTL_TRAP_FREEZE)) {
		FUNC4(&current->sighand->siglock);
		current->jobctl |= JOBCTL_TRAP_FREEZE;
		FUNC3(TIF_SIGPENDING);
		FUNC6(&current->sighand->siglock);
	}
	FUNC7(&css_set_lock);
}