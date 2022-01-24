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
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,unsigned int const) ; 
 scalar_t__ FUNC4 (void*) ; 

void *FUNC5(void *data, const unsigned int size)
{
	void *ptr = FUNC1(size, GFP_NOFS);

	if (FUNC4(ptr)) {
		FUNC2(ptr, data, size);
		FUNC3(data, 0, size);
		return ptr;
	}
	FUNC0(ptr);
	return NULL;
}