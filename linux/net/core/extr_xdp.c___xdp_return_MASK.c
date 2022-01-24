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
struct xdp_mem_info {int type; int /*<<< orphan*/  id; } ;
struct xdp_mem_allocator {TYPE_1__* zc_alloc; int /*<<< orphan*/  page_pool; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (TYPE_1__*,unsigned long) ;} ;

/* Variables and functions */
#define  MEM_TYPE_PAGE_ORDER0 131 
#define  MEM_TYPE_PAGE_POOL 130 
#define  MEM_TYPE_PAGE_SHARED 129 
#define  MEM_TYPE_ZERO_COPY 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdp_mem_allocator*) ; 
 int /*<<< orphan*/  mem_id_ht ; 
 int /*<<< orphan*/  mem_id_rht_params ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct xdp_mem_allocator* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct xdp_mem_info*,struct page*) ; 
 struct page* FUNC10 (void*) ; 
 struct page* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(void *data, struct xdp_mem_info *mem, bool napi_direct,
			 unsigned long handle)
{
	struct xdp_mem_allocator *xa;
	struct page *page;

	switch (mem->type) {
	case MEM_TYPE_PAGE_POOL:
		FUNC5();
		/* mem->id is valid, checked in xdp_rxq_info_reg_mem_model() */
		xa = FUNC7(mem_id_ht, &mem->id, mem_id_rht_params);
		page = FUNC10(data);
		if (FUNC1(xa)) {
			napi_direct &= !FUNC12();
			FUNC3(xa->page_pool, page, napi_direct);
		} else {
			/* Hopefully stack show who to blame for late return */
			FUNC0(1, "page_pool gone mem.id=%d", mem->id);
			FUNC9(mem, page);
			FUNC4(page);
		}
		FUNC6();
		break;
	case MEM_TYPE_PAGE_SHARED:
		FUNC2(data);
		break;
	case MEM_TYPE_PAGE_ORDER0:
		page = FUNC11(data); /* Assumes order0 page*/
		FUNC4(page);
		break;
	case MEM_TYPE_ZERO_COPY:
		/* NB! Only valid from an xdp_buff! */
		FUNC5();
		/* mem->id is valid, checked in xdp_rxq_info_reg_mem_model() */
		xa = FUNC7(mem_id_ht, &mem->id, mem_id_rht_params);
		xa->zc_alloc->free(xa->zc_alloc, handle);
		FUNC6();
	default:
		/* Not possible, checked in xdp_rxq_info_reg_mem_model() */
		break;
	}
}