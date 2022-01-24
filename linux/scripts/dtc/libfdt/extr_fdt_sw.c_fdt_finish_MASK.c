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
typedef  scalar_t__ uint32_t ;
struct fdt_property {void* nameoff; } ;
typedef  void* fdt32_t ;

/* Variables and functions */
 scalar_t__ FDT_END ; 
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FDT_FIRST_SUPPORTED_VERSION ; 
 int /*<<< orphan*/  FDT_MAGIC ; 
 scalar_t__ FDT_PROP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (void*) ; 
 void** FUNC3 (void*,int) ; 
 scalar_t__ FUNC4 (void*,int,int*) ; 
 int FUNC5 (void*) ; 
 struct fdt_property* FUNC6 (void*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int) ; 
 int FUNC11 (void*) ; 
 int FUNC12 (void*) ; 
 int FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

int FUNC15(void *fdt)
{
	char *p = (char *)fdt;
	fdt32_t *end;
	int oldstroffset, newstroffset;
	uint32_t tag;
	int offset, nextoffset;

	FUNC0(fdt);

	/* Add terminator */
	end = FUNC3(fdt, sizeof(*end));
	if (! end)
		return -FDT_ERR_NOSPACE;
	*end = FUNC1(FDT_END);

	/* Relocate the string table */
	oldstroffset = FUNC13(fdt) - FUNC11(fdt);
	newstroffset = FUNC5(fdt) + FUNC12(fdt);
	FUNC14(p + newstroffset, p + oldstroffset, FUNC11(fdt));
	FUNC9(fdt, newstroffset);

	/* Walk the structure, correcting string offsets */
	offset = 0;
	while ((tag = FUNC4(fdt, offset, &nextoffset)) != FDT_END) {
		if (tag == FDT_PROP) {
			struct fdt_property *prop =
				FUNC6(fdt, offset);
			int nameoff;

			nameoff = FUNC2(prop->nameoff);
			nameoff += FUNC11(fdt);
			prop->nameoff = FUNC1(nameoff);
		}
		offset = nextoffset;
	}
	if (nextoffset < 0)
		return nextoffset;

	/* Finally, adjust the header */
	FUNC10(fdt, newstroffset + FUNC11(fdt));

	/* And fix up fields that were keeping intermediate state. */
	FUNC7(fdt, FDT_FIRST_SUPPORTED_VERSION);
	FUNC8(fdt, FDT_MAGIC);

	return 0;
}