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
struct fdt_property {void* len; void* nameoff; void* tag; } ;

/* Variables and functions */
 int FDT_PROP ; 
 int FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*) ; 
 int FUNC4 (void*,char const*,int*) ; 
 struct fdt_property* FUNC5 (void*,int) ; 
 int FUNC6 (void*,struct fdt_property*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void *fdt, int nodeoffset, const char *name,
			     int len, struct fdt_property **prop)
{
	int proplen;
	int nextoffset;
	int namestroff;
	int err;
	int allocated;

	if ((nextoffset = FUNC2(fdt, nodeoffset)) < 0)
		return nextoffset;

	namestroff = FUNC4(fdt, name, &allocated);
	if (namestroff < 0)
		return namestroff;

	*prop = FUNC5(fdt, nextoffset);
	proplen = sizeof(**prop) + FUNC0(len);

	err = FUNC6(fdt, *prop, 0, proplen);
	if (err) {
		if (allocated)
			FUNC3(fdt, name);
		return err;
	}

	(*prop)->tag = FUNC1(FDT_PROP);
	(*prop)->nameoff = FUNC1(namestroff);
	(*prop)->len = FUNC1(len);
	return 0;
}