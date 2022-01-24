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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC5(size_t size, gfp_t flags)
{
	void *ptr;

	FUNC0(size & (size-1)); /* Must be a power of 2 */

	if (size < PAGE_SIZE)
		ptr = FUNC4(FUNC3(size), flags);
	else
		ptr = (void *)FUNC1(flags, FUNC2(size));

	/* Check alignment; SLUB has gotten this wrong in the past,
	 * and this can lead to user data corruption! */
	FUNC0(((unsigned long) ptr) & (size-1));

	return ptr;
}