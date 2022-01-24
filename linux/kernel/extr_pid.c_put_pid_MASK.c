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
struct pid_namespace {int /*<<< orphan*/  pid_cachep; } ;
struct pid {size_t level; int /*<<< orphan*/  count; TYPE_1__* numbers; } ;
struct TYPE_2__ {struct pid_namespace* ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pid*) ; 
 int /*<<< orphan*/  FUNC1 (struct pid_namespace*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct pid *pid)
{
	struct pid_namespace *ns;

	if (!pid)
		return;

	ns = pid->numbers[pid->level].ns;
	if (FUNC2(&pid->count)) {
		FUNC0(ns->pid_cachep, pid);
		FUNC1(ns);
	}
}