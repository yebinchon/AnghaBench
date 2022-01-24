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
struct timekeeper {int dummy; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {struct timekeeper timekeeper; } ;

/* Variables and functions */
 int /*<<< orphan*/  pvclock_gtod_chain ; 
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timekeeper_lock ; 
 TYPE_1__ tk_core ; 
 int /*<<< orphan*/  FUNC3 (struct timekeeper*,int) ; 

int FUNC4(struct notifier_block *nb)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned long flags;
	int ret;

	FUNC1(&timekeeper_lock, flags);
	ret = FUNC0(&pvclock_gtod_chain, nb);
	FUNC3(tk, true);
	FUNC2(&timekeeper_lock, flags);

	return ret;
}