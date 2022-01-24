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
typedef  int /*<<< orphan*/  HUF_CElt ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BIT_CStream_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (size_t const) ; 

size_t FUNC7(void *dst, size_t dstSize, const void *src, size_t srcSize, const HUF_CElt *CTable)
{
	const BYTE *ip = (const BYTE *)src;
	BYTE *const ostart = (BYTE *)dst;
	BYTE *const oend = ostart + dstSize;
	BYTE *op = ostart;
	size_t n;
	BIT_CStream_t bitC;

	/* init */
	if (dstSize < 8)
		return 0; /* not enough space to compress */
	{
		size_t const initErr = FUNC1(&bitC, op, oend - op);
		if (FUNC6(initErr))
			return 0;
	}

	n = srcSize & ~3; /* join to mod 4 */
	switch (srcSize & 3) {
	case 3: FUNC5(&bitC, ip[n + 2], CTable); FUNC4(&bitC);
		/* fall through */
	case 2: FUNC5(&bitC, ip[n + 1], CTable); FUNC3(&bitC);
		/* fall through */
	case 1: FUNC5(&bitC, ip[n + 0], CTable); FUNC2(&bitC);
	case 0:
	default:;
	}

	for (; n > 0; n -= 4) { /* note : n&3==0 at this stage */
		FUNC5(&bitC, ip[n - 1], CTable);
		FUNC3(&bitC);
		FUNC5(&bitC, ip[n - 2], CTable);
		FUNC4(&bitC);
		FUNC5(&bitC, ip[n - 3], CTable);
		FUNC3(&bitC);
		FUNC5(&bitC, ip[n - 4], CTable);
		FUNC2(&bitC);
	}

	return FUNC0(&bitC);
}