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
 unsigned long PAGE_SIZE ; 
 unsigned long PMD_SIZE ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 

__attribute__((used)) static unsigned long FUNC3(void *entry)
{
	if (FUNC2(entry))
		return 0;
	else if (FUNC0(entry))
		return 0;
	else if (FUNC1(entry))
		return PMD_SIZE;
	else
		return PAGE_SIZE;
}