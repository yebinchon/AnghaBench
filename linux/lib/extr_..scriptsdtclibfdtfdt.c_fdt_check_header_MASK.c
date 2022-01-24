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
 int FDT_ERR_BADMAGIC ; 
 int FDT_ERR_BADVERSION ; 
 int FDT_ERR_TRUNCATED ; 
 int FDT_FIRST_SUPPORTED_VERSION ; 
 scalar_t__ FDT_LAST_SUPPORTED_VERSION ; 
 scalar_t__ FDT_MAGIC ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (void const*) ; 
 int FUNC3 (void const*) ; 
 scalar_t__ FUNC4 (void const*) ; 
 int /*<<< orphan*/  FUNC5 (void const*) ; 
 int /*<<< orphan*/  FUNC6 (void const*) ; 
 int /*<<< orphan*/  FUNC7 (void const*) ; 
 int /*<<< orphan*/  FUNC8 (void const*) ; 
 int /*<<< orphan*/  FUNC9 (void const*) ; 
 size_t FUNC10 (void const*) ; 
 int FUNC11 (void const*) ; 

int FUNC12(const void *fdt)
{
	size_t hdrsize;

	if (FUNC4(fdt) != FDT_MAGIC)
		return -FDT_ERR_BADMAGIC;
	hdrsize = FUNC2(fdt);
	if ((FUNC11(fdt) < FDT_FIRST_SUPPORTED_VERSION)
	    || (FUNC3(fdt) > FDT_LAST_SUPPORTED_VERSION))
		return -FDT_ERR_BADVERSION;
	if (FUNC11(fdt) < FUNC3(fdt))
		return -FDT_ERR_BADVERSION;

	if ((FUNC10(fdt) < hdrsize)
	    || (FUNC10(fdt) > INT_MAX))
		return -FDT_ERR_TRUNCATED;

	/* Bounds check memrsv block */
	if (!FUNC1(hdrsize, FUNC10(fdt), FUNC7(fdt)))
		return -FDT_ERR_TRUNCATED;

	/* Bounds check structure block */
	if (FUNC11(fdt) < 17) {
		if (!FUNC1(hdrsize, FUNC10(fdt),
				FUNC6(fdt)))
			return -FDT_ERR_TRUNCATED;
	} else {
		if (!FUNC0(hdrsize, FUNC10(fdt),
				  FUNC6(fdt),
				  FUNC9(fdt)))
			return -FDT_ERR_TRUNCATED;
	}

	/* Bounds check strings block */
	if (!FUNC0(hdrsize, FUNC10(fdt),
			  FUNC5(fdt), FUNC8(fdt)))
		return -FDT_ERR_TRUNCATED;

	return 0;
}