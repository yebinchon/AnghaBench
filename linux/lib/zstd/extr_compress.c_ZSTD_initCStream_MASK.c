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
typedef  int /*<<< orphan*/  ZSTD_parameters ;
typedef  int /*<<< orphan*/  ZSTD_customMem ;
typedef  int /*<<< orphan*/  ZSTD_CStream ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const) ; 
 size_t FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 scalar_t__ FUNC3 (size_t const) ; 

ZSTD_CStream *FUNC4(ZSTD_parameters params, unsigned long long pledgedSrcSize, void *workspace, size_t workspaceSize)
{
	ZSTD_customMem const stackMem = FUNC2(workspace, workspaceSize);
	ZSTD_CStream *const zcs = FUNC0(stackMem);
	if (zcs) {
		size_t const code = FUNC1(zcs, NULL, 0, params, pledgedSrcSize);
		if (FUNC3(code)) {
			return NULL;
		}
	}
	return zcs;
}