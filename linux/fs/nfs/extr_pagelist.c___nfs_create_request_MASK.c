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
struct page {int dummy; } ;
struct nfs_page {unsigned int wb_offset; unsigned int wb_pgbase; unsigned int wb_bytes; scalar_t__ wb_nio; int /*<<< orphan*/  wb_kref; int /*<<< orphan*/  wb_index; struct page* wb_page; struct nfs_lock_context* wb_lock_context; } ;
struct nfs_open_context {int /*<<< orphan*/  flags; } ;
struct nfs_lock_context {int /*<<< orphan*/  io_count; int /*<<< orphan*/  count; struct nfs_open_context* open_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nfs_page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_CONTEXT_BAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nfs_page* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_page *
FUNC8(struct nfs_lock_context *l_ctx, struct page *page,
		   unsigned int pgbase, unsigned int offset,
		   unsigned int count)
{
	struct nfs_page		*req;
	struct nfs_open_context *ctx = l_ctx->open_context;

	if (FUNC7(NFS_CONTEXT_BAD, &ctx->flags))
		return FUNC0(-EBADF);
	/* try to allocate the request struct */
	req = FUNC4();
	if (req == NULL)
		return FUNC0(-ENOMEM);

	req->wb_lock_context = l_ctx;
	FUNC6(&l_ctx->count);
	FUNC1(&l_ctx->io_count);

	/* Initialize the request struct. Initially, we assume a
	 * long write-back delay. This will be adjusted in
	 * update_nfs_request below if the region is not locked. */
	req->wb_page    = page;
	if (page) {
		req->wb_index = FUNC5(page);
		FUNC2(page);
	}
	req->wb_offset  = offset;
	req->wb_pgbase	= pgbase;
	req->wb_bytes   = count;
	FUNC3(&req->wb_kref);
	req->wb_nio = 0;
	return req;
}