#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {unsigned long start; unsigned long end; } ;
struct page {int dummy; } ;
struct dev_dax {TYPE_1__* region; } ;
typedef  unsigned long phys_addr_t ;
typedef  int pgoff_t ;
struct TYPE_2__ {int align; struct resource res; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (void*) ; 

phys_addr_t FUNC4(struct dev_dax *dev_dax, pgoff_t pgoff,
		unsigned long size)
{
	struct resource *res = &dev_dax->region->res;
	phys_addr_t addr;

	addr = pgoff * PAGE_SIZE + res->start;
	if (addr >= res->start && addr <= res->end) {
		if (addr + size - 1 <= res->end) {
			if (FUNC1(addr)) {
				struct page *page;

				if (dev_dax->region->align > PAGE_SIZE)
					return -1;

				page = FUNC3((void *)addr);
				return FUNC0(FUNC2(page));
			} else
				return addr;
		}
	}
	return -1;
}