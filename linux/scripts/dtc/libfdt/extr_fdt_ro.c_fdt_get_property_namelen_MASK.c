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
struct fdt_property {int dummy; } ;

/* Variables and functions */
 int FDT_ERR_BADVERSION ; 
 struct fdt_property const* FUNC0 (void const*,int,char const*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (void const*) ; 

const struct fdt_property *FUNC2(const void *fdt,
						    int offset,
						    const char *name,
						    int namelen, int *lenp)
{
	/* Prior to version 16, properties may need realignment
	 * and this API does not work. fdt_getprop_*() will, however. */
	if (FUNC1(fdt) < 0x10) {
		if (lenp)
			*lenp = -FDT_ERR_BADVERSION;
		return NULL;
	}

	return FUNC0(fdt, offset, name, namelen, lenp,
					 NULL);
}