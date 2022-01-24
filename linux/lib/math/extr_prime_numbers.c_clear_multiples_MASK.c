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
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long*) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long x,
				     unsigned long *p,
				     unsigned long start,
				     unsigned long end)
{
	unsigned long m;

	m = 2 * x;
	if (m < start)
		m = FUNC1(start, x);

	while (m < end) {
		FUNC0(m, p);
		m += x;
	}

	return x;
}