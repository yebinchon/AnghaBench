#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfs_pageio_descriptor {TYPE_1__* pg_ops; } ;
struct nfs_page {scalar_t__ wb_bytes; scalar_t__ wb_page; scalar_t__ wb_pgbase; int /*<<< orphan*/  wb_lock_context; } ;
struct file_lock_context {int /*<<< orphan*/  flc_flock; int /*<<< orphan*/  flc_posix; } ;
struct TYPE_8__ {struct file_lock_context* i_flctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_6__ {size_t (* pg_test ) (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;} ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (struct nfs_page*) ; 
 scalar_t__ FUNC6 (struct nfs_page*) ; 
 size_t FUNC7 (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ; 

__attribute__((used)) static bool FUNC8(struct nfs_page *prev,
				      struct nfs_page *req,
				      struct nfs_pageio_descriptor *pgio)
{
	size_t size;
	struct file_lock_context *flctx;

	if (prev) {
		if (!FUNC4(FUNC5(req), FUNC5(prev)))
			return false;
		flctx = FUNC1(FUNC5(req)->dentry)->i_flctx;
		if (flctx != NULL &&
		    !(FUNC2(&flctx->flc_posix) &&
		      FUNC2(&flctx->flc_flock)) &&
		    !FUNC3(req->wb_lock_context,
					    prev->wb_lock_context))
			return false;
		if (FUNC6(req) != FUNC6(prev) + prev->wb_bytes)
			return false;
		if (req->wb_page == prev->wb_page) {
			if (req->wb_pgbase != prev->wb_pgbase + prev->wb_bytes)
				return false;
		} else {
			if (req->wb_pgbase != 0 ||
			    prev->wb_pgbase + prev->wb_bytes != PAGE_SIZE)
				return false;
		}
	}
	size = pgio->pg_ops->pg_test(pgio, prev, req);
	FUNC0(size > req->wb_bytes);
	if (size && size < req->wb_bytes)
		req->wb_bytes = size;
	return size > 0;
}