#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cgroup {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  mems_allowed; } ;
struct TYPE_5__ {struct cgroup* cgroup; } ;
struct TYPE_6__ {TYPE_1__ css; } ;

/* Variables and functions */
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 

void FUNC6(void)
{
	struct cgroup *cgrp;

	FUNC3();

	cgrp = FUNC5(current)->css.cgroup;
	FUNC1(",cpuset=");
	FUNC2(cgrp);
	FUNC1(",mems_allowed=%*pbl",
		FUNC0(&current->mems_allowed));

	FUNC4();
}