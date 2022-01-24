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
 long FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline long FUNC2(struct rcu_segcblist *rsclp)
{
#ifdef CONFIG_RCU_NOCB_CPU
	return atomic_long_read(&rsclp->len);
#else
	return FUNC0(rsclp->len);
#endif
}