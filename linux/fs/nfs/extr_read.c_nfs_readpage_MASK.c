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
struct nfs_open_context {int /*<<< orphan*/  error; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EBADF ; 
 int ESTALE ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFSIOS_READPAGES ; 
 int /*<<< orphan*/  NFSIOS_VFSREADPAGE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs_open_context* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 struct nfs_open_context* FUNC7 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nfs_open_context*,struct inode*,struct page*) ; 
 int FUNC10 (struct nfs_open_context*,struct inode*,struct page*) ; 
 int FUNC11 (struct inode*,struct page*) ; 
 TYPE_1__* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int FUNC16 (struct page*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC18(struct file *file, struct page *page)
{
	struct nfs_open_context *ctx;
	struct inode *inode = FUNC12(page)->host;
	int		error;

	FUNC3("NFS: nfs_readpage (%p %ld@%lu)\n",
		page, PAGE_SIZE, FUNC13(page));
	FUNC8(inode, NFSIOS_VFSREADPAGE);
	FUNC5(inode, NFSIOS_READPAGES, 1);

	/*
	 * Try to flush any pending writes to the file..
	 *
	 * NOTE! Because we own the page lock, there cannot
	 * be any new pending writes generated at this point
	 * for this page (other pages can be written to).
	 */
	error = FUNC11(inode, page);
	if (error)
		goto out_unlock;
	if (FUNC2(page))
		goto out_unlock;

	error = -ESTALE;
	if (FUNC1(inode))
		goto out_unlock;

	if (file == NULL) {
		error = -EBADF;
		ctx = FUNC7(inode, NULL, FMODE_READ);
		if (ctx == NULL)
			goto out_unlock;
	} else
		ctx = FUNC4(FUNC6(file));

	if (!FUNC0(inode)) {
		error = FUNC10(ctx, inode, page);
		if (error == 0)
			goto out;
	}

	FUNC17(&ctx->error, 0);
	error = FUNC9(ctx, inode, page);
	if (!error) {
		error = FUNC16(page);
		if (!FUNC2(page) && !error)
			error = FUNC17(&ctx->error, 0);
	}
out:
	FUNC14(ctx);
	return error;
out_unlock:
	FUNC15(page);
	return error;
}