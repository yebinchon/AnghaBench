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

/* Variables and functions */
 int /*<<< orphan*/  PG_waiters ; 
 int /*<<< orphan*/  FUNC0 (long,void volatile*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void volatile*) ; 

__attribute__((used)) static inline bool FUNC2(long nr, volatile void *mem)
{
	FUNC0(nr, mem);
	/* smp_mb__after_atomic(); */
	return FUNC1(PG_waiters, mem);
}