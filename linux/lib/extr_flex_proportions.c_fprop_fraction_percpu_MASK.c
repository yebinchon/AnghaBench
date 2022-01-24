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
struct fprop_local_percpu {int /*<<< orphan*/  events; } ;
struct fprop_global {int /*<<< orphan*/  events; int /*<<< orphan*/  sequence; } ;
typedef  long s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fprop_global*,struct fprop_local_percpu*) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

void FUNC4(struct fprop_global *p,
			   struct fprop_local_percpu *pl,
			   unsigned long *numerator, unsigned long *denominator)
{
	unsigned int seq;
	s64 num, den;

	do {
		seq = FUNC2(&p->sequence);
		FUNC0(p, pl);
		num = FUNC1(&pl->events);
		den = FUNC1(&p->events);
	} while (FUNC3(&p->sequence, seq));

	/*
	 * Make fraction <= 1 and denominator > 0 even in presence of percpu
	 * counter errors
	 */
	if (den <= num) {
		if (num)
			den = num;
		else
			den = 1;
	}
	*denominator = den;
	*numerator = num;
}