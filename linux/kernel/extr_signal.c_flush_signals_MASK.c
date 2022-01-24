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
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; int /*<<< orphan*/  pending; } ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {int /*<<< orphan*/  shared_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct task_struct *t)
{
	unsigned long flags;

	FUNC2(&t->sighand->siglock, flags);
	FUNC0(t, TIF_SIGPENDING);
	FUNC1(&t->pending);
	FUNC1(&t->signal->shared_pending);
	FUNC3(&t->sighand->siglock, flags);
}