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
 int FDT_ERR_BADPATH ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 char* FUNC1 (void const*,char const*,int) ; 
 int FUNC2 (void const*,char const*) ; 
 int FUNC3 (void const*,int,char const*,int) ; 
 char* FUNC4 (char const*,char,int) ; 

int FUNC5(const void *fdt, const char *path, int namelen)
{
	const char *end = path + namelen;
	const char *p = path;
	int offset = 0;

	FUNC0(fdt);

	/* see if we have an alias */
	if (*path != '/') {
		const char *q = FUNC4(path, '/', end - p);

		if (!q)
			q = end;

		p = FUNC1(fdt, p, q - p);
		if (!p)
			return -FDT_ERR_BADPATH;
		offset = FUNC2(fdt, p);

		p = q;
	}

	while (p < end) {
		const char *q;

		while (*p == '/') {
			p++;
			if (p == end)
				return offset;
		}
		q = FUNC4(p, '/', end - p);
		if (! q)
			q = end;

		offset = FUNC3(fdt, offset, p, q-p);
		if (offset < 0)
			return offset;

		p = q;
	}

	return offset;
}