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
struct shuffle_task {int /*<<< orphan*/  st_l; struct task_struct* st_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct shuffle_task* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shuffle_task_list ; 
 int /*<<< orphan*/  shuffle_task_mutex ; 

void FUNC5(struct task_struct *tp)
{
	struct shuffle_task *stp;

	if (FUNC0(tp == NULL))
		return;
	stp = FUNC1(sizeof(*stp), GFP_KERNEL);
	if (FUNC0(stp == NULL))
		return;
	stp->st_t = tp;
	FUNC3(&shuffle_task_mutex);
	FUNC2(&stp->st_l, &shuffle_task_list);
	FUNC4(&shuffle_task_mutex);
}