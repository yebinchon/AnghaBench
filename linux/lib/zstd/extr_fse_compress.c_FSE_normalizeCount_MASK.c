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
typedef  int U64 ;
typedef  int U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FSE_DEFAULT_TABLELOG ; 
 unsigned int FSE_MAX_TABLELOG ; 
 unsigned int FSE_MIN_TABLELOG ; 
 scalar_t__ FUNC1 (size_t const) ; 
 unsigned int FUNC2 (size_t,unsigned int) ; 
 size_t FUNC3 (short*,unsigned int,unsigned int const*,size_t,unsigned int) ; 
 int /*<<< orphan*/  GENERIC ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  tableLog_tooLarge ; 

size_t FUNC5(short *normalizedCounter, unsigned tableLog, const unsigned *count, size_t total, unsigned maxSymbolValue)
{
	/* Sanity checks */
	if (tableLog == 0)
		tableLog = FSE_DEFAULT_TABLELOG;
	if (tableLog < FSE_MIN_TABLELOG)
		return FUNC0(GENERIC); /* Unsupported size */
	if (tableLog > FSE_MAX_TABLELOG)
		return FUNC0(tableLog_tooLarge); /* Unsupported size */
	if (tableLog < FUNC2(total, maxSymbolValue))
		return FUNC0(GENERIC); /* Too small tableLog, compression potentially impossible */

	{
		U32 const rtbTable[] = {0, 473195, 504333, 520860, 550000, 700000, 750000, 830000};
		U64 const scale = 62 - tableLog;
		U64 const step = FUNC4((U64)1 << 62, (U32)total); /* <== here, one division ! */
		U64 const vStep = 1ULL << (scale - 20);
		int stillToDistribute = 1 << tableLog;
		unsigned s;
		unsigned largest = 0;
		short largestP = 0;
		U32 lowThreshold = (U32)(total >> tableLog);

		for (s = 0; s <= maxSymbolValue; s++) {
			if (count[s] == total)
				return 0; /* rle special case */
			if (count[s] == 0) {
				normalizedCounter[s] = 0;
				continue;
			}
			if (count[s] <= lowThreshold) {
				normalizedCounter[s] = -1;
				stillToDistribute--;
			} else {
				short proba = (short)((count[s] * step) >> scale);
				if (proba < 8) {
					U64 restToBeat = vStep * rtbTable[proba];
					proba += (count[s] * step) - ((U64)proba << scale) > restToBeat;
				}
				if (proba > largestP)
					largestP = proba, largest = s;
				normalizedCounter[s] = proba;
				stillToDistribute -= proba;
			}
		}
		if (-stillToDistribute >= (normalizedCounter[largest] >> 1)) {
			/* corner case, need another normalization method */
			size_t const errorCode = FUNC3(normalizedCounter, tableLog, count, total, maxSymbolValue);
			if (FUNC1(errorCode))
				return errorCode;
		} else
			normalizedCounter[largest] += (short)stillToDistribute;
	}

	return tableLog;
}