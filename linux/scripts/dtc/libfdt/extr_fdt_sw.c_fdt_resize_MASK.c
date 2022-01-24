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
 int FDT_ERR_INTERNAL ; 
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 size_t FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 size_t FUNC5 (void*) ; 
 size_t FUNC6 (void*) ; 
 size_t FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,size_t) ; 

int FUNC9(void *fdt, void *buf, int bufsize)
{
	size_t headsize, tailsize;
	char *oldtail, *newtail;

	FUNC0(fdt);

	headsize = FUNC2(fdt) + FUNC6(fdt);
	tailsize = FUNC5(fdt);

	if ((headsize + tailsize) > FUNC7(fdt))
		return -FDT_ERR_INTERNAL;

	if ((headsize + tailsize) > bufsize)
		return -FDT_ERR_NOSPACE;

	oldtail = (char *)fdt + FUNC7(fdt) - tailsize;
	newtail = (char *)buf + bufsize - tailsize;

	/* Two cases to avoid clobbering data if the old and new
	 * buffers partially overlap */
	if (buf <= fdt) {
		FUNC8(buf, fdt, headsize);
		FUNC8(newtail, oldtail, tailsize);
	} else {
		FUNC8(newtail, oldtail, tailsize);
		FUNC8(buf, fdt, headsize);
	}

	FUNC4(buf, bufsize);
	if (FUNC1(buf))
		FUNC3(buf, bufsize);

	return 0;
}