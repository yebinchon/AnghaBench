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
struct swait_queue_head {int /*<<< orphan*/  task_list; } ;
struct swait_queue {int /*<<< orphan*/  task_list; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct swait_queue_head *q, struct swait_queue *wait)
{
	wait->task = current;
	if (FUNC1(&wait->task_list))
		FUNC0(&wait->task_list, &q->task_list);
}