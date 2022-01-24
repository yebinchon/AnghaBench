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
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  SPRN_PVR ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char) ; 

int
FUNC5(char *buffer, size_t sz)
{
	unsigned long pvr;
	int nb;

	pvr = FUNC2(SPRN_PVR);

	nb = FUNC3(buffer, sz, "%lu,%lu$", FUNC1(pvr), FUNC0(pvr));

	/* look for end marker to ensure the entire data fit */
	if (FUNC4(buffer, '$')) {
		buffer[nb-1] = '\0';
		return 0;
	}
	return ENOBUFS;
}