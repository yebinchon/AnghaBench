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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  FSE_DTable ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int FSE_MAX_SYMBOL_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,short*,unsigned int,unsigned int,void*,size_t) ; 
 size_t FUNC6 (void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (size_t) ; 
 size_t FUNC8 (short*,unsigned int*,unsigned int*,int /*<<< orphan*/  const* const,size_t) ; 
 int /*<<< orphan*/  tableLog_tooLarge ; 

size_t FUNC9(void *dst, size_t dstCapacity, const void *cSrc, size_t cSrcSize, unsigned maxLog, void *workspace, size_t workspaceSize)
{
	const BYTE *const istart = (const BYTE *)cSrc;
	const BYTE *ip = istart;
	unsigned tableLog;
	unsigned maxSymbolValue = FSE_MAX_SYMBOL_VALUE;
	size_t NCountLength;

	FSE_DTable *dt;
	short *counting;
	size_t spaceUsed32 = 0;

	FUNC4(sizeof(FSE_DTable) == sizeof(U32));

	dt = (FSE_DTable *)((U32 *)workspace + spaceUsed32);
	spaceUsed32 += FUNC3(maxLog);
	counting = (short *)((U32 *)workspace + spaceUsed32);
	spaceUsed32 += FUNC0(sizeof(short) * (FSE_MAX_SYMBOL_VALUE + 1), sizeof(U32)) >> 2;

	if ((spaceUsed32 << 2) > workspaceSize)
		return FUNC2(tableLog_tooLarge);
	workspace = (U32 *)workspace + spaceUsed32;
	workspaceSize -= (spaceUsed32 << 2);

	/* normal FSE decoding mode */
	NCountLength = FUNC8(counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
	if (FUNC7(NCountLength))
		return NCountLength;
	// if (NCountLength >= cSrcSize) return ERROR(srcSize_wrong);   /* too small input size; supposed to be already checked in NCountLength, only remaining
	// case : NCountLength==cSrcSize */
	if (tableLog > maxLog)
		return FUNC2(tableLog_tooLarge);
	ip += NCountLength;
	cSrcSize -= NCountLength;

	FUNC1(FUNC5(dt, counting, maxSymbolValue, tableLog, workspace, workspaceSize));

	return FUNC6(dst, dstCapacity, ip, cSrcSize, dt); /* always return, even if it is an error code */
}