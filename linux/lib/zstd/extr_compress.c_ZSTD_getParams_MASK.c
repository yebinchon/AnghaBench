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
typedef  int /*<<< orphan*/  params ;
struct TYPE_4__ {int /*<<< orphan*/  cParams; } ;
typedef  TYPE_1__ ZSTD_parameters ;
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long long,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

ZSTD_parameters FUNC2(int compressionLevel, unsigned long long srcSize, size_t dictSize)
{
	ZSTD_parameters params;
	ZSTD_compressionParameters const cParams = FUNC0(compressionLevel, srcSize, dictSize);
	FUNC1(&params, 0, sizeof(params));
	params.cParams = cParams;
	return params;
}