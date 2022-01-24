#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {TYPE_1__* rseq; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_id; int /*<<< orphan*/  cpu_id_start; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(struct task_struct *t)
{
	u32 cpu_id = FUNC1();

	if (FUNC0(cpu_id, &t->rseq->cpu_id_start))
		return -EFAULT;
	if (FUNC0(cpu_id, &t->rseq->cpu_id))
		return -EFAULT;
	FUNC2(t);
	return 0;
}