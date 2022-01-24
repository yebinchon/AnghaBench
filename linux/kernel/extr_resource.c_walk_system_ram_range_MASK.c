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
typedef  int u64 ;
struct resource {int end; int /*<<< orphan*/  start; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long IORESOURCE_BUSY ; 
 unsigned long IORESOURCE_SYSTEM_RAM ; 
 int /*<<< orphan*/  IORES_DESC_NONE ; 
 int PAGE_SHIFT ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,unsigned long,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC3 (unsigned long,unsigned long,void*) ; 

int FUNC4(unsigned long start_pfn, unsigned long nr_pages,
			  void *arg, int (*func)(unsigned long, unsigned long, void *))
{
	resource_size_t start, end;
	unsigned long flags;
	struct resource res;
	unsigned long pfn, end_pfn;
	int ret = -EINVAL;

	start = (u64) start_pfn << PAGE_SHIFT;
	end = ((u64)(start_pfn + nr_pages) << PAGE_SHIFT) - 1;
	flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
	while (start < end &&
	       !FUNC2(start, end, flags, IORES_DESC_NONE,
				    false, &res)) {
		pfn = FUNC1(res.start);
		end_pfn = FUNC0(res.end + 1);
		if (end_pfn > pfn)
			ret = (*func)(pfn, end_pfn - pfn, arg);
		if (ret)
			break;
		start = res.end + 1;
	}
	return ret;
}