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
 int FUNC0 (void const*) ; 
 void const* FUNC1 (void const*,int) ; 
 int FUNC2 (void const*) ; 
 unsigned int FUNC3 (void const*) ; 
 int FUNC4 (void const*) ; 

const void *FUNC5(const void *fdt, int offset, unsigned int len)
{
	unsigned absoffset = offset + FUNC0(fdt);

	if ((absoffset < offset)
	    || ((absoffset + len) < absoffset)
	    || (absoffset + len) > FUNC3(fdt))
		return NULL;

	if (FUNC4(fdt) >= 0x11)
		if (((offset + len) < offset)
		    || ((offset + len) > FUNC2(fdt)))
			return NULL;

	return FUNC1(fdt, offset);
}