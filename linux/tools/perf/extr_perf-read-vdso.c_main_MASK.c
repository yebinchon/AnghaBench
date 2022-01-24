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
 int /*<<< orphan*/  VDSO__MAP_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void**,void**,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (void*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC3(void)
{
	void *start, *end;
	size_t size, written;

	if (FUNC1(&start, &end, VDSO__MAP_NAME))
		return 1;

	size = end - start;

	while (size) {
		written = FUNC2(start, 1, size, stdout);
		if (!written)
			return 1;
		start += written;
		size -= written;
	}

	if (FUNC0(stdout))
		return 1;

	return 0;
}