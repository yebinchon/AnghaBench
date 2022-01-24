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

/* Variables and functions */
 int FDT_ERR_BADOFFSET ; 
 int FDT_ERR_INTERNAL ; 
 int FDT_ERR_TRUNCATED ; 
 scalar_t__ FDT_MAGIC ; 
 scalar_t__ FDT_SW_MAGIC ; 
 scalar_t__ FUNC0 (void const*) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int FUNC2 (void const*) ; 
 int FUNC3 (void const*) ; 
 scalar_t__ FUNC4 (void const*) ; 
 int FUNC5 (void const*) ; 
 char* FUNC6 (char const*,char,size_t) ; 

const char *FUNC7(const void *fdt, int stroffset, int *lenp)
{
	uint32_t absoffset = stroffset + FUNC1(fdt);
	size_t len;
	int err;
	const char *s, *n;

	err = FUNC2(fdt);
	if (err != 0)
		goto fail;

	err = -FDT_ERR_BADOFFSET;
	if (absoffset >= FUNC4(fdt))
		goto fail;
	len = FUNC4(fdt) - absoffset;

	if (FUNC0(fdt) == FDT_MAGIC) {
		if (stroffset < 0)
			goto fail;
		if (FUNC5(fdt) >= 17) {
			if (stroffset >= FUNC3(fdt))
				goto fail;
			if ((FUNC3(fdt) - stroffset) < len)
				len = FUNC3(fdt) - stroffset;
		}
	} else if (FUNC0(fdt) == FDT_SW_MAGIC) {
		if ((stroffset >= 0)
		    || (stroffset < -FUNC3(fdt)))
			goto fail;
		if ((-stroffset) < len)
			len = -stroffset;
	} else {
		err = -FDT_ERR_INTERNAL;
		goto fail;
	}

	s = (const char *)fdt + absoffset;
	n = FUNC6(s, '\0', len);
	if (!n) {
		/* missing terminating NULL */
		err = -FDT_ERR_TRUNCATED;
		goto fail;
	}

	if (lenp)
		*lenp = n - s;
	return s;

fail:
	if (lenp)
		*lenp = err;
	return NULL;
}