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
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 

__attribute__((used)) static void *FUNC6(resource_size_t offset, size_t size,
			   unsigned long flags)
{
	unsigned long pfn = FUNC0(offset);

	/* In the simple case just return the existing linear address */
	if (FUNC5(pfn) && !FUNC1(FUNC4(pfn)) &&
	    FUNC3(offset, size, flags))
		return FUNC2(offset);

	return NULL; /* fallback to arch_memremap_wb */
}