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

/* Variables and functions */
 int /*<<< orphan*/  boost_mutex ; 
 struct task_struct** boost_tasks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_torture_boost ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct task_struct*) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct task_struct *t;

	if (boost_tasks[cpu] == NULL)
		return 0;
	FUNC0(&boost_mutex);
	t = boost_tasks[cpu];
	boost_tasks[cpu] = NULL;
	FUNC2();
	FUNC1(&boost_mutex);

	/* This must be outside of the mutex, otherwise deadlock! */
	FUNC3(rcu_torture_boost, t);
	return 0;
}