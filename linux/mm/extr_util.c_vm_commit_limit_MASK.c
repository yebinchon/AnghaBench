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
 int PAGE_SHIFT ; 
 int FUNC0 () ; 
 int sysctl_overcommit_kbytes ; 
 int sysctl_overcommit_ratio ; 
 scalar_t__ total_swap_pages ; 
 int FUNC1 () ; 

unsigned long FUNC2(void)
{
	unsigned long allowed;

	if (sysctl_overcommit_kbytes)
		allowed = sysctl_overcommit_kbytes >> (PAGE_SHIFT - 10);
	else
		allowed = ((FUNC1() - FUNC0())
			   * sysctl_overcommit_ratio / 100);
	allowed += total_swap_pages;

	return allowed;
}