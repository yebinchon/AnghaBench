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
struct TYPE_2__ {int /*<<< orphan*/  find_total; int /*<<< orphan*/  find_success; int /*<<< orphan*/  del_total; int /*<<< orphan*/  add_total; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 TYPE_1__ swap_cache_info ; 
 int total_swap_pages ; 
 int FUNC2 () ; 

void FUNC3(void)
{
	FUNC1("%lu pages in swap cache\n", FUNC2());
	FUNC1("Swap cache stats: add %lu, delete %lu, find %lu/%lu\n",
		swap_cache_info.add_total, swap_cache_info.del_total,
		swap_cache_info.find_success, swap_cache_info.find_total);
	FUNC1("Free swap  = %ldkB\n",
		FUNC0() << (PAGE_SHIFT - 10));
	FUNC1("Total swap = %lukB\n", total_swap_pages << (PAGE_SHIFT - 10));
}