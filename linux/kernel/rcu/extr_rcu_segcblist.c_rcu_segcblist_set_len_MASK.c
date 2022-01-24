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
struct rcu_segcblist {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long) ; 

void FUNC2(struct rcu_segcblist *rsclp, long v)
{
#ifdef CONFIG_RCU_NOCB_CPU
	atomic_long_set(&rsclp->len, v);
#else
	FUNC0(rsclp->len, v);
#endif
}