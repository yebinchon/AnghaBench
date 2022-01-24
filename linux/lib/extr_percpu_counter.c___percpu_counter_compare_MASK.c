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
struct percpu_counter {int dummy; } ;
typedef  scalar_t__ s64 ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (struct percpu_counter*) ; 
 scalar_t__ FUNC3 (struct percpu_counter*) ; 

int FUNC4(struct percpu_counter *fbc, s64 rhs, s32 batch)
{
	s64	count;

	count = FUNC2(fbc);
	/* Check to see if rough count will be sufficient for comparison */
	if (FUNC0(count - rhs) > (batch * FUNC1())) {
		if (count > rhs)
			return 1;
		else
			return -1;
	}
	/* Need to use precise count */
	count = FUNC3(fbc);
	if (count > rhs)
		return 1;
	else if (count < rhs)
		return -1;
	else
		return 0;
}