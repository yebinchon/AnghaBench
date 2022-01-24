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
struct page {int dummy; } ;
struct nfs_page {struct nfs_lock_context* wb_lock_context; struct page* wb_page; } ;
struct nfs_open_context {int /*<<< orphan*/  dentry; int /*<<< orphan*/  flags; } ;
struct nfs_lock_context {struct nfs_open_context* open_context; int /*<<< orphan*/  io_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  uoc_rpcwaitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CONTEXT_UNLOCK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct nfs_page *req)
{
	struct page *page = req->wb_page;
	struct nfs_lock_context *l_ctx = req->wb_lock_context;
	struct nfs_open_context *ctx;

	if (page != NULL) {
		FUNC4(page);
		req->wb_page = NULL;
	}
	if (l_ctx != NULL) {
		if (FUNC1(&l_ctx->io_count)) {
			FUNC7(&l_ctx->io_count);
			ctx = l_ctx->open_context;
			if (FUNC6(NFS_CONTEXT_UNLOCK, &ctx->flags))
				FUNC5(&FUNC0(FUNC2(ctx->dentry))->uoc_rpcwaitq);
		}
		FUNC3(l_ctx);
		req->wb_lock_context = NULL;
	}
}