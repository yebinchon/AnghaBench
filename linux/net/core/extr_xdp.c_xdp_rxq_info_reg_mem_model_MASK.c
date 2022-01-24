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
struct TYPE_2__ {int type; int id; } ;
struct xdp_rxq_info {scalar_t__ reg_state; TYPE_1__ mem; } ;
struct xdp_mem_allocator {int /*<<< orphan*/  page_pool; int /*<<< orphan*/  node; void* allocator; TYPE_1__ mem; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum xdp_mem_type { ____Placeholder_xdp_mem_type } xdp_mem_type ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int MEM_TYPE_PAGE_POOL ; 
 int MEM_TYPE_ZERO_COPY ; 
 int FUNC1 (void*) ; 
 scalar_t__ REG_STATE_REGISTERED ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xdp_mem_allocator*) ; 
 struct xdp_mem_allocator* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mem_id_ht ; 
 int /*<<< orphan*/  mem_id_init ; 
 int /*<<< orphan*/  mem_id_lock ; 
 int /*<<< orphan*/  mem_id_pool ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct xdp_mem_allocator*,struct xdp_rxq_info*) ; 

int FUNC15(struct xdp_rxq_info *xdp_rxq,
			       enum xdp_mem_type type, void *allocator)
{
	struct xdp_mem_allocator *xdp_alloc;
	gfp_t gfp = GFP_KERNEL;
	int id, errno, ret;
	void *ptr;

	if (xdp_rxq->reg_state != REG_STATE_REGISTERED) {
		FUNC2(1, "Missing register, driver bug");
		return -EFAULT;
	}

	if (!FUNC4(type))
		return -EOPNOTSUPP;

	xdp_rxq->mem.type = type;

	if (!allocator) {
		if (type == MEM_TYPE_PAGE_POOL || type == MEM_TYPE_ZERO_COPY)
			return -EINVAL; /* Setup time check page_pool req */
		return 0;
	}

	/* Delay init of rhashtable to save memory if feature isn't used */
	if (!mem_id_init) {
		FUNC10(&mem_id_lock);
		ret = FUNC6();
		FUNC11(&mem_id_lock);
		if (ret < 0) {
			FUNC3(1);
			return ret;
		}
	}

	xdp_alloc = FUNC9(sizeof(*xdp_alloc), gfp);
	if (!xdp_alloc)
		return -ENOMEM;

	FUNC10(&mem_id_lock);
	id = FUNC5(gfp);
	if (id < 0) {
		errno = id;
		goto err;
	}
	xdp_rxq->mem.id = id;
	xdp_alloc->mem  = xdp_rxq->mem;
	xdp_alloc->allocator = allocator;

	/* Insert allocator into ID lookup table */
	ptr = FUNC13(mem_id_ht, &id, &xdp_alloc->node);
	if (FUNC0(ptr)) {
		FUNC7(&mem_id_pool, xdp_rxq->mem.id);
		xdp_rxq->mem.id = 0;
		errno = FUNC1(ptr);
		goto err;
	}

	if (type == MEM_TYPE_PAGE_POOL)
		FUNC12(xdp_alloc->page_pool);

	FUNC11(&mem_id_lock);

	FUNC14(xdp_alloc, xdp_rxq);
	return 0;
err:
	FUNC11(&mem_id_lock);
	FUNC8(xdp_alloc);
	return errno;
}