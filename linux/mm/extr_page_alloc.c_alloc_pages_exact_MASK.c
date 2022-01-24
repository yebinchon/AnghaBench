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
typedef  int gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int __GFP_COMP ; 
 unsigned long FUNC1 (int,unsigned int) ; 
 unsigned int FUNC2 (size_t) ; 
 void* FUNC3 (unsigned long,unsigned int,size_t) ; 

void *FUNC4(size_t size, gfp_t gfp_mask)
{
	unsigned int order = FUNC2(size);
	unsigned long addr;

	if (FUNC0(gfp_mask & __GFP_COMP))
		gfp_mask &= ~__GFP_COMP;

	addr = FUNC1(gfp_mask, order);
	return FUNC3(addr, order, size);
}