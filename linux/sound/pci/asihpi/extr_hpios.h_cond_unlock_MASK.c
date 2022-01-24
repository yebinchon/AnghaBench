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
struct hpios_spinlock {scalar_t__ lock_context; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ IN_LOCK_BH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct hpios_spinlock *l)
{
	if (l->lock_context == IN_LOCK_BH)
		FUNC1(&((l)->lock));
	else
		FUNC0(&((l)->lock));
}