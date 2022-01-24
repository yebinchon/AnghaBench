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
typedef  int /*<<< orphan*/  ZSTD_parameters ;
struct TYPE_5__ {int /*<<< orphan*/  const* cdict; } ;
typedef  TYPE_1__ ZSTD_CStream ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const,unsigned long long,void*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,unsigned long long) ; 

ZSTD_CStream *FUNC4(const ZSTD_CDict *cdict, unsigned long long pledgedSrcSize, void *workspace, size_t workspaceSize)
{
	ZSTD_parameters const params = FUNC0(cdict);
	ZSTD_CStream *const zcs = FUNC1(params, pledgedSrcSize, workspace, workspaceSize);
	if (zcs) {
		zcs->cdict = cdict;
		if (FUNC2(FUNC3(zcs, pledgedSrcSize))) {
			return NULL;
		}
	}
	return zcs;
}