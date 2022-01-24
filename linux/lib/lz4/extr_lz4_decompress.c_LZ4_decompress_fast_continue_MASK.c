#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int prefixSize; int extDictSize; int /*<<< orphan*/ * prefixEnd; int /*<<< orphan*/ * externalDict; } ;
struct TYPE_5__ {TYPE_1__ internal_donotuse; } ;
typedef  TYPE_1__ LZ4_streamDecode_t_internal ;
typedef  TYPE_2__ LZ4_streamDecode_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int KB ; 
 int FUNC0 (char const*,char*,int) ; 
 int FUNC1 (char const*,char*,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (char const*,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(LZ4_streamDecode_t *LZ4_streamDecode,
	const char *source, char *dest, int originalSize)
{
	LZ4_streamDecode_t_internal *lz4sd = &LZ4_streamDecode->internal_donotuse;
	int result;

	if (lz4sd->prefixSize == 0) {
		FUNC3(lz4sd->extDictSize == 0);
		result = FUNC0(source, dest, originalSize);
		if (result <= 0)
			return result;
		lz4sd->prefixSize = originalSize;
		lz4sd->prefixEnd = (BYTE *)dest + originalSize;
	} else if (lz4sd->prefixEnd == (BYTE *)dest) {
		if (lz4sd->prefixSize >= 64 * KB - 1 ||
		    lz4sd->extDictSize == 0)
			result = FUNC0(source, dest,
						     originalSize);
		else
			result = FUNC1(source, dest,
				originalSize, lz4sd->prefixSize,
				lz4sd->externalDict, lz4sd->extDictSize);
		if (result <= 0)
			return result;
		lz4sd->prefixSize += originalSize;
		lz4sd->prefixEnd  += originalSize;
	} else {
		lz4sd->extDictSize = lz4sd->prefixSize;
		lz4sd->externalDict = lz4sd->prefixEnd - lz4sd->extDictSize;
		result = FUNC2(source, dest,
			originalSize, lz4sd->externalDict, lz4sd->extDictSize);
		if (result <= 0)
			return result;
		lz4sd->prefixSize = originalSize;
		lz4sd->prefixEnd = (BYTE *)dest + originalSize;
	}
	return result;
}