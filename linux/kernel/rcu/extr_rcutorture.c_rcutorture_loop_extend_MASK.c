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
struct torture_random_state {int dummy; } ;
struct rt_read_seg {int dummy; } ;

/* Variables and functions */
 int RCUTORTURE_RDR_MAX_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct torture_random_state*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int,struct torture_random_state*,struct rt_read_seg*) ; 
 int FUNC4 (struct torture_random_state*) ; 

__attribute__((used)) static struct rt_read_seg *
FUNC5(int *readstate, struct torture_random_state *trsp,
		       struct rt_read_seg *rtrsp)
{
	int i;
	int j;
	int mask = FUNC2();

	FUNC0(!*readstate); /* -Existing- RCU read-side critsect! */
	if (!((mask - 1) & mask))
		return rtrsp;  /* Current RCU reader not extendable. */
	/* Bias towards larger numbers of loops. */
	i = (FUNC4(trsp) >> 3);
	i = ((i | (i >> 3)) & RCUTORTURE_RDR_MAX_LOOPS) + 1;
	for (j = 0; j < i; j++) {
		mask = FUNC1(*readstate, trsp);
		FUNC3(readstate, mask, trsp, &rtrsp[j]);
	}
	return &rtrsp[j];
}