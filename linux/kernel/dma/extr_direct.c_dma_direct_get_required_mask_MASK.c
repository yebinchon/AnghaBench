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
typedef  unsigned long long u64 ;
struct device {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (unsigned long long) ; 
 int max_pfn ; 
 unsigned long long FUNC1 (struct device*,int) ; 

u64 FUNC2(struct device *dev)
{
	u64 max_dma = FUNC1(dev, (max_pfn - 1) << PAGE_SHIFT);

	return (1ULL << (FUNC0(max_dma) - 1)) * 2 - 1;
}