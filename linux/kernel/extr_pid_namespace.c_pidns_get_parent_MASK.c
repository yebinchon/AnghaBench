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
struct pid_namespace {struct pid_namespace* parent; } ;
struct ns_common {int dummy; } ;
struct TYPE_4__ {struct ns_common ns; } ;
struct TYPE_3__ {struct pid_namespace* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 struct ns_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 TYPE_2__* FUNC1 (struct pid_namespace*) ; 
 struct pid_namespace* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct ns_common*) ; 

__attribute__((used)) static struct ns_common *FUNC4(struct ns_common *ns)
{
	struct pid_namespace *active = FUNC2(current);
	struct pid_namespace *pid_ns, *p;

	/* See if the parent is in the current namespace */
	pid_ns = p = FUNC3(ns)->parent;
	for (;;) {
		if (!p)
			return FUNC0(-EPERM);
		if (p == active)
			break;
		p = p->parent;
	}

	return &FUNC1(pid_ns)->ns;
}