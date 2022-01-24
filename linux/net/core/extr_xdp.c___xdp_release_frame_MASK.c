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
struct xdp_mem_info {int /*<<< orphan*/  id; } ;
struct xdp_mem_allocator {int /*<<< orphan*/  page_pool; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  mem_id_ht ; 
 int /*<<< orphan*/  mem_id_rht_params ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct xdp_mem_allocator* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (void*) ; 

void FUNC5(void *data, struct xdp_mem_info *mem)
{
	struct xdp_mem_allocator *xa;
	struct page *page;

	FUNC1();
	xa = FUNC3(mem_id_ht, &mem->id, mem_id_rht_params);
	page = FUNC4(data);
	if (xa)
		FUNC0(xa->page_pool, page);
	FUNC2();
}