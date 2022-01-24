#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  customFree; int /*<<< orphan*/  customAlloc; } ;
typedef  TYPE_1__ ZSTD_customMem ;
struct TYPE_11__ {int /*<<< orphan*/ * cctx; int /*<<< orphan*/  customMem; } ;
typedef  TYPE_2__ ZSTD_CStream ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

ZSTD_CStream *FUNC5(ZSTD_customMem customMem)
{
	ZSTD_CStream *zcs;

	if (!customMem.customAlloc || !customMem.customFree)
		return NULL;

	zcs = (ZSTD_CStream *)FUNC2(sizeof(ZSTD_CStream), customMem);
	if (zcs == NULL)
		return NULL;
	FUNC4(zcs, 0, sizeof(ZSTD_CStream));
	FUNC3(&zcs->customMem, &customMem, sizeof(ZSTD_customMem));
	zcs->cctx = FUNC0(customMem);
	if (zcs->cctx == NULL) {
		FUNC1(zcs);
		return NULL;
	}
	return zcs;
}