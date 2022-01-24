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
 unsigned long ULONG_MAX ; 
 unsigned long jiffies ; 
 unsigned int FUNC0 (unsigned long) ; 

__attribute__((used)) static inline unsigned int FUNC1(unsigned long start)
{
	unsigned long end = jiffies;

	if (end >= start)
		return FUNC0(end - start);

	return FUNC0(end + (ULONG_MAX - start) + 1);
}