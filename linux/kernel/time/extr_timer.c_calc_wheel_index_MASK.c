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
 int LVL_DEPTH ; 
 unsigned long LVL_MASK ; 
 unsigned long FUNC0 (int) ; 
 unsigned long WHEEL_TIMEOUT_CUTOFF ; 
 unsigned long WHEEL_TIMEOUT_MAX ; 
 unsigned int FUNC1 (unsigned long,int) ; 

__attribute__((used)) static int FUNC2(unsigned long expires, unsigned long clk)
{
	unsigned long delta = expires - clk;
	unsigned int idx;

	if (delta < FUNC0(1)) {
		idx = FUNC1(expires, 0);
	} else if (delta < FUNC0(2)) {
		idx = FUNC1(expires, 1);
	} else if (delta < FUNC0(3)) {
		idx = FUNC1(expires, 2);
	} else if (delta < FUNC0(4)) {
		idx = FUNC1(expires, 3);
	} else if (delta < FUNC0(5)) {
		idx = FUNC1(expires, 4);
	} else if (delta < FUNC0(6)) {
		idx = FUNC1(expires, 5);
	} else if (delta < FUNC0(7)) {
		idx = FUNC1(expires, 6);
	} else if (LVL_DEPTH > 8 && delta < FUNC0(8)) {
		idx = FUNC1(expires, 7);
	} else if ((long) delta < 0) {
		idx = clk & LVL_MASK;
	} else {
		/*
		 * Force expire obscene large timeouts to expire at the
		 * capacity limit of the wheel.
		 */
		if (expires >= WHEEL_TIMEOUT_CUTOFF)
			expires = WHEEL_TIMEOUT_MAX;

		idx = FUNC1(expires, LVL_DEPTH - 1);
	}
	return idx;
}