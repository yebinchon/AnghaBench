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
 int FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ ) ; 

int FUNC3(void *fdt, int nodeoffset)
{
	int endoffset;

	endoffset = FUNC0(fdt, nodeoffset);
	if (endoffset < 0)
		return endoffset;

	FUNC1(FUNC2(fdt, nodeoffset, 0),
			endoffset - nodeoffset);
	return 0;
}