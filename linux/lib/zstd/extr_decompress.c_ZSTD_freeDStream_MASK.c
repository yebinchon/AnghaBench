#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_customMem ;
struct TYPE_4__ {struct TYPE_4__* outBuff; struct TYPE_4__* inBuff; int /*<<< orphan*/ * ddictLocal; int /*<<< orphan*/ * dctx; int /*<<< orphan*/  customMem; } ;
typedef  TYPE_1__ ZSTD_DStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

size_t FUNC3(ZSTD_DStream *zds)
{
	if (zds == NULL)
		return 0; /* support free on null */
	{
		ZSTD_customMem const cMem = zds->customMem;
		FUNC1(zds->dctx);
		zds->dctx = NULL;
		FUNC2(zds->ddictLocal);
		zds->ddictLocal = NULL;
		FUNC0(zds->inBuff, cMem);
		zds->inBuff = NULL;
		FUNC0(zds->outBuff, cMem);
		zds->outBuff = NULL;
		FUNC0(zds, cMem);
		return 0;
	}
}