#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct nfs_pageio_descriptor {TYPE_3__* pg_lseg; } ;
struct nfs_page {int dummy; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_1__ pls_range; } ;
struct TYPE_5__ {scalar_t__ stripe_unit; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 size_t FUNC4 (scalar_t__,unsigned int) ; 
 unsigned int FUNC5 (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ; 
 scalar_t__ FUNC6 (struct nfs_page*) ; 

__attribute__((used)) static size_t
FUNC7(struct nfs_pageio_descriptor *pgio, struct nfs_page *prev,
		   struct nfs_page *req)
{
	unsigned int size;
	u64 p_stripe, r_stripe;
	u32 stripe_offset;
	u64 segment_offset = pgio->pg_lseg->pls_range.offset;
	u32 stripe_unit = FUNC0(pgio->pg_lseg)->stripe_unit;

	/* calls nfs_generic_pg_test */
	size = FUNC5(pgio, prev, req);
	if (!size)
		return 0;

	/* see if req and prev are in the same stripe */
	if (prev) {
		p_stripe = (u64)FUNC6(prev) - segment_offset;
		r_stripe = (u64)FUNC6(req) - segment_offset;
		FUNC3(p_stripe, stripe_unit);
		FUNC3(r_stripe, stripe_unit);

		if (p_stripe != r_stripe)
			return 0;
	}

	/* calculate remaining bytes in the current stripe */
	FUNC2((u64)FUNC6(req) - segment_offset,
			stripe_unit,
			&stripe_offset);
	FUNC1(stripe_offset > stripe_unit);
	if (stripe_offset >= stripe_unit)
		return 0;
	return FUNC4(stripe_unit - (unsigned int)stripe_offset, size);
}