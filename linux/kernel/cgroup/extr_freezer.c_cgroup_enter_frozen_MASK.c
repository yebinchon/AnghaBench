#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cgroup {int dummy; } ;
struct TYPE_3__ {int frozen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  css_set_lock ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cgroup* FUNC4 (TYPE_1__*) ; 

void FUNC5(void)
{
	struct cgroup *cgrp;

	if (current->frozen)
		return;

	FUNC2(&css_set_lock);
	current->frozen = true;
	cgrp = FUNC4(current);
	FUNC0(cgrp);
	FUNC1(cgrp);
	FUNC3(&css_set_lock);
}