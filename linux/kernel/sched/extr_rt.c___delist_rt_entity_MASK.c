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
struct sched_rt_entity {scalar_t__ on_list; int /*<<< orphan*/  run_list; } ;
struct rt_prio_array {int /*<<< orphan*/  bitmap; scalar_t__ queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct sched_rt_entity*) ; 

__attribute__((used)) static void FUNC4(struct sched_rt_entity *rt_se, struct rt_prio_array *array)
{
	FUNC1(&rt_se->run_list);

	if (FUNC2(array->queue + FUNC3(rt_se)))
		FUNC0(FUNC3(rt_se), array->bitmap);

	rt_se->on_list = 0;
}