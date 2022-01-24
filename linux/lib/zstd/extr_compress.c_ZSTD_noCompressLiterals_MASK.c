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
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  U16 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,size_t) ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,void const*,size_t) ; 
 int /*<<< orphan*/  set_basic ; 

__attribute__((used)) static size_t FUNC4(void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{
	BYTE *const ostart = (BYTE * const)dst;
	U32 const flSize = 1 + (srcSize > 31) + (srcSize > 4095);

	if (srcSize + flSize > dstCapacity)
		return FUNC0(dstSize_tooSmall);

	switch (flSize) {
	case 1: /* 2 - 1 - 5 */ ostart[0] = (BYTE)((U32)set_basic + (srcSize << 3)); break;
	case 2: /* 2 - 2 - 12 */ FUNC1(ostart, (U16)((U32)set_basic + (1 << 2) + (srcSize << 4))); break;
	default: /*note : should not be necessary : flSize is within {1,2,3} */
	case 3: /* 2 - 2 - 20 */ FUNC2(ostart, (U32)((U32)set_basic + (3 << 2) + (srcSize << 4))); break;
	}

	FUNC3(ostart + flSize, src, srcSize);
	return srcSize + flSize;
}