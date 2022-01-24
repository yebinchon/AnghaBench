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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FDT_ERR_NOTFOUND ; 
 int FUNC0 (void*,char*) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *fdto, uint32_t delta)
{
	int fixups;

	fixups = FUNC0(fdto, "/__local_fixups__");
	if (fixups < 0) {
		/* There's no local phandles to adjust, bail out */
		if (fixups == -FDT_ERR_NOTFOUND)
			return 0;

		return fixups;
	}

	/*
	 * Update our local references from the root of the tree
	 */
	return FUNC1(fdto, 0, fixups,
						    delta);
}