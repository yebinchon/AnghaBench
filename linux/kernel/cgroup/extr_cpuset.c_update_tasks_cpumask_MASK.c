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
struct css_task_iter {int dummy; } ;
struct cpuset {int /*<<< orphan*/  effective_cpus; int /*<<< orphan*/  css; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct css_task_iter*) ; 
 struct task_struct* FUNC1 (struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cpuset *cs)
{
	struct css_task_iter it;
	struct task_struct *task;

	FUNC2(&cs->css, 0, &it);
	while ((task = FUNC1(&it)))
		FUNC3(task, cs->effective_cpus);
	FUNC0(&it);
}