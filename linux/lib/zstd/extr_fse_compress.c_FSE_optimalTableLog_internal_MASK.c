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
typedef  scalar_t__ U32 ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ FSE_DEFAULT_TABLELOG ; 
 scalar_t__ FSE_MAX_TABLELOG ; 
 scalar_t__ FSE_MIN_TABLELOG ; 
 scalar_t__ FUNC1 (size_t,unsigned int) ; 

unsigned FUNC2(unsigned maxTableLog, size_t srcSize, unsigned maxSymbolValue, unsigned minus)
{
	U32 maxBitsSrc = FUNC0((U32)(srcSize - 1)) - minus;
	U32 tableLog = maxTableLog;
	U32 minBits = FUNC1(srcSize, maxSymbolValue);
	if (tableLog == 0)
		tableLog = FSE_DEFAULT_TABLELOG;
	if (maxBitsSrc < tableLog)
		tableLog = maxBitsSrc; /* Accuracy can be reduced */
	if (minBits > tableLog)
		tableLog = minBits; /* Need a minimum to safely represent all symbol values */
	if (tableLog < FSE_MIN_TABLELOG)
		tableLog = FSE_MIN_TABLELOG;
	if (tableLog > FSE_MAX_TABLELOG)
		tableLog = FSE_MAX_TABLELOG;
	return tableLog;
}