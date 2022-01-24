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
struct task_struct {int dummy; } ;
struct TYPE_3__ {struct task_struct* task; int /*<<< orphan*/  node; } ;
struct TYPE_4__ {TYPE_1__ cpu; } ;
struct k_itimer {TYPE_2__ it; int /*<<< orphan*/ * kclock; int /*<<< orphan*/  it_clock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  clock_posix_cpu ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct k_itimer *new_timer)
{
	struct task_struct *p = FUNC0(new_timer->it_clock);

	if (!p)
		return -EINVAL;

	new_timer->kclock = &clock_posix_cpu;
	FUNC1(&new_timer->it.cpu.node);
	new_timer->it.cpu.task = p;
	return 0;
}