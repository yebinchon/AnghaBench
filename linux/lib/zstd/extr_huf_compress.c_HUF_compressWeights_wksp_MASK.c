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
typedef  int U32 ;
typedef  int /*<<< orphan*/  S16 ;
typedef  int /*<<< orphan*/  FSE_CTable ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,void const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int*,size_t,int) ; 
 int FUNC9 (int,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int HUF_TABLELOG_MAX ; 
 int MAX_FSE_TABLELOG_FOR_HUFF_HEADER ; 
 size_t cSize ; 
 size_t hSize ; 
 size_t maxCount ; 
 int /*<<< orphan*/  tableLog_tooLarge ; 

size_t FUNC12(void *dst, size_t dstSize, const void *weightTable, size_t wtSize, void *workspace, size_t workspaceSize)
{
	BYTE *const ostart = (BYTE *)dst;
	BYTE *op = ostart;
	BYTE *const oend = ostart + dstSize;

	U32 maxSymbolValue = HUF_TABLELOG_MAX;
	U32 tableLog = MAX_FSE_TABLELOG_FOR_HUFF_HEADER;

	FSE_CTable *CTable;
	U32 *count;
	S16 *norm;
	size_t spaceUsed32 = 0;

	FUNC11(sizeof(FSE_CTable) == sizeof(U32));

	CTable = (FSE_CTable *)((U32 *)workspace + spaceUsed32);
	spaceUsed32 += FUNC4(MAX_FSE_TABLELOG_FOR_HUFF_HEADER, HUF_TABLELOG_MAX);
	count = (U32 *)workspace + spaceUsed32;
	spaceUsed32 += HUF_TABLELOG_MAX + 1;
	norm = (S16 *)((U32 *)workspace + spaceUsed32);
	spaceUsed32 += FUNC0(sizeof(S16) * (HUF_TABLELOG_MAX + 1), sizeof(U32)) >> 2;

	if ((spaceUsed32 << 2) > workspaceSize)
		return FUNC3(tableLog_tooLarge);
	workspace = (U32 *)workspace + spaceUsed32;
	workspaceSize -= (spaceUsed32 << 2);

	/* init conditions */
	if (wtSize <= 1)
		return 0; /* Not compressible */

	/* Scan input and build symbol stats */
	{
		FUNC2(maxCount, FUNC7(count, &maxSymbolValue, weightTable, wtSize));
		if (maxCount == wtSize)
			return 1; /* only a single symbol in src : rle */
		if (maxCount == 1)
			return 0; /* each symbol present maximum once => not compressible */
	}

	tableLog = FUNC9(tableLog, wtSize, maxSymbolValue);
	FUNC1(FUNC8(norm, tableLog, count, wtSize, maxSymbolValue));

	/* Write table description header */
	{
		FUNC2(hSize, FUNC10(op, oend - op, norm, maxSymbolValue, tableLog));
		op += hSize;
	}

	/* Compress */
	FUNC1(FUNC5(CTable, norm, maxSymbolValue, tableLog, workspace, workspaceSize));
	{
		FUNC2(cSize, FUNC6(op, oend - op, weightTable, wtSize, CTable));
		if (cSize == 0)
			return 0; /* not enough space for compressed data */
		op += cSize;
	}

	return op - ostart;
}