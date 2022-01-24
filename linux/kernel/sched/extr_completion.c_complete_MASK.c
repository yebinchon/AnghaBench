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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct completion {scalar_t__ done; TYPE_1__ wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_NORMAL ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct completion *x)
{
	unsigned long flags;

	FUNC1(&x->wait.lock, flags);

	if (x->done != UINT_MAX)
		x->done++;
	FUNC0(&x->wait, TASK_NORMAL, 1);
	FUNC2(&x->wait.lock, flags);
}