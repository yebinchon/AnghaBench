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
struct notifier_block {int dummy; } ;
struct atomic_notifier_head {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct atomic_notifier_head *nh,
		struct notifier_block *n)
{
	unsigned long flags;
	int ret;

	FUNC1(&nh->lock, flags);
	ret = FUNC0(&nh->head, n);
	FUNC2(&nh->lock, flags);
	return ret;
}