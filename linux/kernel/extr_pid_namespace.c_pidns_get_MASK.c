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
struct task_struct {int dummy; } ;
struct ns_common {int dummy; } ;
struct pid_namespace {struct ns_common ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct pid_namespace* FUNC3 (struct task_struct*) ; 

__attribute__((used)) static struct ns_common *FUNC4(struct task_struct *task)
{
	struct pid_namespace *ns;

	FUNC1();
	ns = FUNC3(task);
	if (ns)
		FUNC0(ns);
	FUNC2();

	return ns ? &ns->ns : NULL;
}