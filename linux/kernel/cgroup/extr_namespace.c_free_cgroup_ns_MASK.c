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
struct cgroup_namespace {int /*<<< orphan*/  ns; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  ucounts; int /*<<< orphan*/  root_cset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct cgroup_namespace *ns)
{
	FUNC3(ns->root_cset);
	FUNC0(ns->ucounts);
	FUNC4(ns->user_ns);
	FUNC2(&ns->ns);
	FUNC1(ns);
}