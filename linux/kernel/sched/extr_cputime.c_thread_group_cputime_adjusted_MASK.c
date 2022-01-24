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
typedef  int /*<<< orphan*/  u64 ;
struct task_struct {TYPE_1__* signal; } ;
struct task_cputime {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prev_cputime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_cputime*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct task_cputime*) ; 

void FUNC2(struct task_struct *p, u64 *ut, u64 *st)
{
	struct task_cputime cputime;

	FUNC1(p, &cputime);
	FUNC0(&cputime, &p->signal->prev_cputime, ut, st);
}