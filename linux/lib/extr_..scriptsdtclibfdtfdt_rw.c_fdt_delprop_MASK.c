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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int) ; 
 struct fdt_property* FUNC2 (void*,int,char const*,int*) ; 
 int FUNC3 (void*,struct fdt_property*,int,int /*<<< orphan*/ ) ; 

int FUNC4(void *fdt, int nodeoffset, const char *name)
{
	struct fdt_property *prop;
	int len, proplen;

	FUNC0(fdt);

	prop = FUNC2(fdt, nodeoffset, name, &len);
	if (!prop)
		return len;

	proplen = sizeof(*prop) + FUNC1(len);
	return FUNC3(fdt, prop, proplen, 0);
}