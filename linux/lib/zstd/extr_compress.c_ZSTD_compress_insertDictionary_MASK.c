#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ forceRawDict; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 scalar_t__ ZSTD_DICT_MAGIC ; 
 size_t FUNC0 (TYPE_1__*,void const*,size_t) ; 
 size_t FUNC1 (TYPE_1__*,void const*,size_t) ; 
 scalar_t__ FUNC2 (void const*) ; 

__attribute__((used)) static size_t FUNC3(ZSTD_CCtx *cctx, const void *dict, size_t dictSize)
{
	if ((dict == NULL) || (dictSize <= 8))
		return 0;

	/* dict as pure content */
	if ((FUNC2(dict) != ZSTD_DICT_MAGIC) || (cctx->forceRawDict))
		return FUNC0(cctx, dict, dictSize);

	/* dict as zstd dictionary */
	return FUNC1(cctx, dict, dictSize);
}