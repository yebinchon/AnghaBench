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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC1 (unsigned long) ; 

__attribute__((used)) static void *FUNC2(unsigned long va_start, unsigned long pages_off)
{
	unsigned long addr;

	addr = va_start + (pages_off << PAGE_SHIFT);
	FUNC0(FUNC1(addr) != FUNC1(va_start));
	return (void *)addr;
}