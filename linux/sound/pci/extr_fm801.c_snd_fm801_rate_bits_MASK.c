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
 int FUNC0 (unsigned int*) ; 
 unsigned int* rates ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static unsigned short FUNC2(unsigned int rate)
{
	unsigned int idx;

	for (idx = 0; idx < FUNC0(rates); idx++)
		if (rates[idx] == rate)
			return idx;
	FUNC1();
	return FUNC0(rates) - 1;
}