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
 unsigned long MAX_JIFFY_OFFSET ; 
 unsigned long FUNC0 (unsigned int const) ; 
 unsigned int const FUNC1 (unsigned long) ; 

unsigned long FUNC2(const unsigned int u)
{
	if (u > FUNC1(MAX_JIFFY_OFFSET))
		return MAX_JIFFY_OFFSET;
	return FUNC0(u);
}