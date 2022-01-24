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
struct rcu_segcblist {long len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,long) ; 
 long FUNC1 (long*,long) ; 
 int /*<<< orphan*/  FUNC2 () ; 

long FUNC3(struct rcu_segcblist *rsclp, long v)
{
#ifdef CONFIG_RCU_NOCB_CPU
	return atomic_long_xchg(&rsclp->len, v);
#else
	long ret = rsclp->len;

	FUNC2(); /* Up to the caller! */
	FUNC0(rsclp->len, v);
	FUNC2(); /* Up to the caller! */
	return ret;
#endif
}