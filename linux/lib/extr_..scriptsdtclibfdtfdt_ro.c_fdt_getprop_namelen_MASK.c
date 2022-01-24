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
struct fdt_property {void const* data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct fdt_property* FUNC1 (void const*,int,char const*,int,int*,int*) ; 
 int FUNC2 (void const*) ; 

const void *FUNC3(const void *fdt, int nodeoffset,
				const char *name, int namelen, int *lenp)
{
	int poffset;
	const struct fdt_property *prop;

	prop = FUNC1(fdt, nodeoffset, name, namelen, lenp,
					 &poffset);
	if (!prop)
		return NULL;

	/* Handle realignment */
	if (FUNC2(fdt) < 0x10 && (poffset + sizeof(*prop)) % 8 &&
	    FUNC0(&prop->len) >= 8)
		return prop->data + 4;
	return prop->data;
}