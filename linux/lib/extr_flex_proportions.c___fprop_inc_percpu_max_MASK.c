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
typedef  int u64 ;
struct fprop_local_percpu {int /*<<< orphan*/  events; } ;
struct fprop_global {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int FPROP_FRAC_BASE ; 
 int FPROP_FRAC_SHIFT ; 
 int /*<<< orphan*/  PROP_BATCH ; 
 int /*<<< orphan*/  FUNC0 (struct fprop_global*,struct fprop_local_percpu*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct fprop_global*,struct fprop_local_percpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct fprop_global *p,
			    struct fprop_local_percpu *pl, int max_frac)
{
	if (FUNC4(max_frac < FPROP_FRAC_BASE)) {
		unsigned long numerator, denominator;

		FUNC0(p, pl, &numerator, &denominator);
		if (numerator >
		    (((u64)denominator) * max_frac) >> FPROP_FRAC_SHIFT)
			return;
	} else
		FUNC1(p, pl);
	FUNC3(&pl->events, 1, PROP_BATCH);
	FUNC2(&p->events, 1);
}