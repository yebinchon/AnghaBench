#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ state ;
struct TYPE_2__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  TYPE_1__ LZ4_streamHC_t ;
typedef  int /*<<< orphan*/  LZ4HC_CCtx_internal ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  limitedOutput ; 
 int /*<<< orphan*/  noLimit ; 

__attribute__((used)) static int FUNC3(
	void *state,
	const char *src,
	char *dst,
	int srcSize,
	int maxDstSize,
	int compressionLevel)
{
	LZ4HC_CCtx_internal *ctx = &((LZ4_streamHC_t *)state)->internal_donotuse;

	if (((size_t)(state)&(sizeof(void *) - 1)) != 0) {
		/* Error : state is not aligned
		 * for pointers (32 or 64 bits)
		 */
		return 0;
	}

	FUNC1(ctx, (const BYTE *)src);

	if (maxDstSize < FUNC2(srcSize))
		return FUNC0(ctx, src, dst,
			srcSize, maxDstSize, compressionLevel, limitedOutput);
	else
		return FUNC0(ctx, src, dst,
			srcSize, maxDstSize, compressionLevel, noLimit);
}