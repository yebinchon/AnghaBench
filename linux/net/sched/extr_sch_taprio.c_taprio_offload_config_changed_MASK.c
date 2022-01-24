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
struct taprio_sched {int /*<<< orphan*/  current_entry_lock; int /*<<< orphan*/  admin_sched; int /*<<< orphan*/  oper_sched; } ;
struct sched_gate_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sched_gate_list* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct taprio_sched*,struct sched_gate_list**,struct sched_gate_list**) ; 

__attribute__((used)) static void FUNC5(struct taprio_sched *q)
{
	struct sched_gate_list *oper, *admin;

	FUNC2(&q->current_entry_lock);

	oper = FUNC1(q->oper_sched,
					 FUNC0(&q->current_entry_lock));
	admin = FUNC1(q->admin_sched,
					  FUNC0(&q->current_entry_lock));

	FUNC4(q, &admin, &oper);

	FUNC3(&q->current_entry_lock);
}