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
 int FDT_ERR_NOTFOUND ; 
 int FUNC0 (void const*,int,int*) ; 

int FUNC1(const void *fdt, int offset)
{
	int depth = 0;

	offset = FUNC0(fdt, offset, &depth);
	if (offset < 0 || depth != 1)
		return -FDT_ERR_NOTFOUND;

	return offset;
}