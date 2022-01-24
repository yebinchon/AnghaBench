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
typedef  int /*<<< orphan*/  huffNodeTable ;
typedef  unsigned int U32 ;
typedef  scalar_t__ HUF_repeat ;
typedef  int /*<<< orphan*/  HUF_CElt ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*,int /*<<< orphan*/  const*,size_t,unsigned int*) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t HUF_BLOCKSIZE_MAX ; 
 int HUF_SYMBOLVALUE_MAX ; 
 unsigned int HUF_TABLELOG_DEFAULT ; 
 unsigned int HUF_TABLELOG_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int*,unsigned int,unsigned int,void*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ * const,void const*,size_t,unsigned int,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,unsigned int*,unsigned int) ; 
 unsigned int FUNC6 (unsigned int,size_t,unsigned int) ; 
 scalar_t__ HUF_repeat_check ; 
 scalar_t__ HUF_repeat_none ; 
 scalar_t__ HUF_repeat_valid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,unsigned int,unsigned int,void*,size_t) ; 
 size_t const hSize ; 
 size_t largest ; 
 size_t const maxBits ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  srcSize_wrong ; 
 int /*<<< orphan*/  tableLog_tooLarge ; 

__attribute__((used)) static size_t FUNC11(void *dst, size_t dstSize, const void *src, size_t srcSize, unsigned maxSymbolValue, unsigned huffLog,
				    unsigned singleStream, void *workSpace, size_t wkspSize, HUF_CElt *oldHufTable, HUF_repeat *repeat, int preferRepeat)
{
	BYTE *const ostart = (BYTE *)dst;
	BYTE *const oend = ostart + dstSize;
	BYTE *op = ostart;

	U32 *count;
	size_t const countSize = sizeof(U32) * (HUF_SYMBOLVALUE_MAX + 1);
	HUF_CElt *CTable;
	size_t const CTableSize = sizeof(HUF_CElt) * (HUF_SYMBOLVALUE_MAX + 1);

	/* checks & inits */
	if (wkspSize < sizeof(huffNodeTable) + countSize + CTableSize)
		return FUNC1(GENERIC);
	if (!srcSize)
		return 0; /* Uncompressed (note : 1 means rle, so first byte must be correct) */
	if (!dstSize)
		return 0; /* cannot fit within dst budget */
	if (srcSize > HUF_BLOCKSIZE_MAX)
		return FUNC1(srcSize_wrong); /* curr block size limit */
	if (huffLog > HUF_TABLELOG_MAX)
		return FUNC1(tableLog_tooLarge);
	if (!maxSymbolValue)
		maxSymbolValue = HUF_SYMBOLVALUE_MAX;
	if (!huffLog)
		huffLog = HUF_TABLELOG_DEFAULT;

	count = (U32 *)workSpace;
	workSpace = (BYTE *)workSpace + countSize;
	wkspSize -= countSize;
	CTable = (HUF_CElt *)workSpace;
	workSpace = (BYTE *)workSpace + CTableSize;
	wkspSize -= CTableSize;

	/* Heuristic : If we don't need to check the validity of the old table use the old table for small inputs */
	if (preferRepeat && repeat && *repeat == HUF_repeat_valid) {
		return FUNC4(ostart, op, oend, src, srcSize, singleStream, oldHufTable);
	}

	/* Scan input and build symbol stats */
	{
		FUNC0(largest, FUNC2(count, &maxSymbolValue, (const BYTE *)src, srcSize, (U32 *)workSpace));
		if (largest == srcSize) {
			*ostart = ((const BYTE *)src)[0];
			return 1;
		} /* single symbol, rle */
		if (largest <= (srcSize >> 7) + 1)
			return 0; /* Fast heuristic : not compressible enough */
	}

	/* Check validity of previous table */
	if (repeat && *repeat == HUF_repeat_check && !FUNC7(oldHufTable, count, maxSymbolValue)) {
		*repeat = HUF_repeat_none;
	}
	/* Heuristic : use existing table for small inputs */
	if (preferRepeat && repeat && *repeat != HUF_repeat_none) {
		return FUNC4(ostart, op, oend, src, srcSize, singleStream, oldHufTable);
	}

	/* Build Huffman Tree */
	huffLog = FUNC6(huffLog, srcSize, maxSymbolValue);
	{
		FUNC0(maxBits, FUNC3(CTable, count, maxSymbolValue, huffLog, workSpace, wkspSize));
		huffLog = (U32)maxBits;
		/* Zero the unused symbols so we can check it for validity */
		FUNC10(CTable + maxSymbolValue + 1, 0, CTableSize - (maxSymbolValue + 1) * sizeof(HUF_CElt));
	}

	/* Write table description header */
	{
		FUNC0(hSize, FUNC8(op, dstSize, CTable, maxSymbolValue, huffLog, workSpace, wkspSize));
		/* Check if using the previous table will be beneficial */
		if (repeat && *repeat != HUF_repeat_none) {
			size_t const oldSize = FUNC5(oldHufTable, count, maxSymbolValue);
			size_t const newSize = FUNC5(CTable, count, maxSymbolValue);
			if (oldSize <= hSize + newSize || hSize + 12 >= srcSize) {
				return FUNC4(ostart, op, oend, src, srcSize, singleStream, oldHufTable);
			}
		}
		/* Use the new table */
		if (hSize + 12ul >= srcSize) {
			return 0;
		}
		op += hSize;
		if (repeat) {
			*repeat = HUF_repeat_none;
		}
		if (oldHufTable) {
			FUNC9(oldHufTable, CTable, CTableSize);
		} /* Save the new table */
	}
	return FUNC4(ostart, op, oend, src, srcSize, singleStream, CTable);
}