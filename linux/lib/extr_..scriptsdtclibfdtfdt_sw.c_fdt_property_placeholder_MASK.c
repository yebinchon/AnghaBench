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
struct fdt_property {void* data; void* len; void* nameoff; void* tag; } ;

/* Variables and functions */
 int FDT_CREATE_FLAG_NO_NAME_DEDUP ; 
 int FDT_ERR_NOSPACE ; 
 int FDT_PROP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*) ; 
 int FUNC5 (void*,char const*,int*) ; 
 struct fdt_property* FUNC6 (void*,scalar_t__) ; 
 int FUNC7 (void*) ; 

int FUNC8(void *fdt, const char *name, int len, void **valp)
{
	struct fdt_property *prop;
	int nameoff;
	int allocated;

	FUNC0(fdt);

	/* String de-duplication can be slow, _NO_NAME_DEDUP skips it */
	if (FUNC7(fdt) & FDT_CREATE_FLAG_NO_NAME_DEDUP) {
		allocated = 1;
		nameoff = FUNC3(fdt, name);
	} else {
		nameoff = FUNC5(fdt, name, &allocated);
	}
	if (nameoff == 0)
		return -FDT_ERR_NOSPACE;

	prop = FUNC6(fdt, sizeof(*prop) + FUNC1(len));
	if (! prop) {
		if (allocated)
			FUNC4(fdt, name);
		return -FDT_ERR_NOSPACE;
	}

	prop->tag = FUNC2(FDT_PROP);
	prop->nameoff = FUNC2(nameoff);
	prop->len = FUNC2(len);
	*valp = prop->data;
	return 0;
}