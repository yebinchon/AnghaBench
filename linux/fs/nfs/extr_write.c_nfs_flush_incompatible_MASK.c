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
struct page {int dummy; } ;
struct nfs_page {struct page* wb_page; struct nfs_lock_context* wb_lock_context; } ;
struct nfs_open_context {int dummy; } ;
struct nfs_lock_context {scalar_t__ lockowner; } ;
struct file_lock_context {int /*<<< orphan*/  flc_flock; int /*<<< orphan*/  flc_posix; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ files; } ;
struct TYPE_5__ {struct file_lock_context* i_flctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 TYPE_3__* current ; 
 TYPE_2__* FUNC0 (struct file*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfs_open_context* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nfs_open_context*) ; 
 struct nfs_page* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct page*) ; 
 TYPE_1__* FUNC8 (struct page*) ; 

int FUNC9(struct file *file, struct page *page)
{
	struct nfs_open_context *ctx = FUNC2(file);
	struct nfs_lock_context *l_ctx;
	struct file_lock_context *flctx = FUNC0(file)->i_flctx;
	struct nfs_page	*req;
	int do_flush, status;
	/*
	 * Look for a request corresponding to this page. If there
	 * is one, and it belongs to another file, we flush it out
	 * before we try to copy anything into the page. Do this
	 * due to the lack of an ACCESS-type call in NFSv2.
	 * Also do the same if we find a request from an existing
	 * dropped page.
	 */
	do {
		req = FUNC4(page);
		if (req == NULL)
			return 0;
		l_ctx = req->wb_lock_context;
		do_flush = req->wb_page != page ||
			!FUNC3(FUNC6(req), ctx);
		if (l_ctx && flctx &&
		    !(FUNC1(&flctx->flc_posix) &&
		      FUNC1(&flctx->flc_flock))) {
			do_flush |= l_ctx->lockowner != current->files;
		}
		FUNC5(req);
		if (!do_flush)
			return 0;
		status = FUNC7(FUNC8(page)->host, page);
	} while (status == 0);
	return status;
}