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
 scalar_t__ FUNC0 (void const*) ; 
 unsigned long PAGE_SIZE ; 

__attribute__((used)) static const char *FUNC1(const void *ptr)
{
	if (!ptr)
		return "(null)";

	if ((unsigned long)ptr < PAGE_SIZE || FUNC0(ptr))
		return "(efault)";

	return NULL;
}