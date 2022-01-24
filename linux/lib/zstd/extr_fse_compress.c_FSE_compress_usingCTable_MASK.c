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
typedef  int /*<<< orphan*/  FSE_CTable ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (void*,size_t,void const*,size_t,int /*<<< orphan*/  const*,int) ; 

size_t FUNC2(void *dst, size_t dstSize, const void *src, size_t srcSize, const FSE_CTable *ct)
{
	unsigned const fast = (dstSize >= FUNC0(srcSize));

	if (fast)
		return FUNC1(dst, dstSize, src, srcSize, ct, 1);
	else
		return FUNC1(dst, dstSize, src, srcSize, ct, 0);
}