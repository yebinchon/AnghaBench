#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  limitedOutput_directive ;
typedef  int U32 ;
struct TYPE_9__ {size_t dictLimit; int lowLimit; int /*<<< orphan*/  compressionLevel; int /*<<< orphan*/  const* dictBase; int /*<<< orphan*/  const* end; int /*<<< orphan*/  const* base; } ;
struct TYPE_8__ {TYPE_2__ internal_donotuse; } ;
typedef  TYPE_1__ LZ4_streamHC_t ;
typedef  TYPE_2__ LZ4HC_CCtx_internal ;
typedef  int /*<<< orphan*/  const BYTE ;

/* Variables and functions */
 int GB ; 
 int KB ; 
 int FUNC0 (TYPE_2__*,char const*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int) ; 

__attribute__((used)) static int FUNC4(
	LZ4_streamHC_t *LZ4_streamHCPtr,
	const char *source,
	char *dest,
	int inputSize,
	int maxOutputSize,
	limitedOutput_directive limit)
{
	LZ4HC_CCtx_internal *ctxPtr = &LZ4_streamHCPtr->internal_donotuse;

	/* auto - init if forgotten */
	if (ctxPtr->base == NULL)
		FUNC1(ctxPtr, (const BYTE *) source);

	/* Check overflow */
	if ((size_t)(ctxPtr->end - ctxPtr->base) > 2 * GB) {
		size_t dictSize = (size_t)(ctxPtr->end - ctxPtr->base)
			- ctxPtr->dictLimit;
		if (dictSize > 64 * KB)
			dictSize = 64 * KB;
		FUNC3(LZ4_streamHCPtr,
			(const char *)(ctxPtr->end) - dictSize, (int)dictSize);
	}

	/* Check if blocks follow each other */
	if ((const BYTE *)source != ctxPtr->end)
		FUNC2(ctxPtr, (const BYTE *)source);

	/* Check overlapping input/dictionary space */
	{
		const BYTE *sourceEnd = (const BYTE *) source + inputSize;
		const BYTE * const dictBegin = ctxPtr->dictBase + ctxPtr->lowLimit;
		const BYTE * const dictEnd = ctxPtr->dictBase + ctxPtr->dictLimit;

		if ((sourceEnd > dictBegin)
			&& ((const BYTE *)source < dictEnd)) {
			if (sourceEnd > dictEnd)
				sourceEnd = dictEnd;
			ctxPtr->lowLimit = (U32)(sourceEnd - ctxPtr->dictBase);

			if (ctxPtr->dictLimit - ctxPtr->lowLimit < 4)
				ctxPtr->lowLimit = ctxPtr->dictLimit;
		}
	}

	return FUNC0(ctxPtr, source, dest,
		inputSize, maxOutputSize, ctxPtr->compressionLevel, limit);
}