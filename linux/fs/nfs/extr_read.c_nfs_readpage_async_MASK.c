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
struct nfs_pgio_mirror {scalar_t__ pg_bytes_written; } ;
struct nfs_pageio_descriptor {scalar_t__ pg_error; int pg_mirror_count; struct nfs_pgio_mirror* pg_mirrors; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  read_io; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 unsigned int PAGE_SIZE ; 
 int FUNC2 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  nfs_async_read_completion_ops ; 
 struct nfs_page* FUNC4 (struct nfs_open_context*,struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 unsigned int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_pageio_descriptor*,struct inode*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_page*,scalar_t__) ; 
 int FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,unsigned int,unsigned int) ; 

int FUNC14(struct nfs_open_context *ctx, struct inode *inode,
		       struct page *page)
{
	struct nfs_page	*new;
	unsigned int len;
	struct nfs_pageio_descriptor pgio;
	struct nfs_pgio_mirror *pgm;

	len = FUNC6(page);
	if (len == 0)
		return FUNC11(page);
	new = FUNC4(ctx, page, 0, len);
	if (FUNC0(new)) {
		FUNC12(page);
		return FUNC2(new);
	}
	if (len < PAGE_SIZE)
		FUNC13(page, len, PAGE_SIZE);

	FUNC9(&pgio, inode, false,
			     &nfs_async_read_completion_ops);
	if (!FUNC7(&pgio, new)) {
		FUNC5(new);
		FUNC10(new, pgio.pg_error);
	}
	FUNC8(&pgio);

	/* It doesn't make sense to do mirrored reads! */
	FUNC3(pgio.pg_mirror_count != 1);

	pgm = &pgio.pg_mirrors[0];
	FUNC1(inode)->read_io += pgm->pg_bytes_written;

	return pgio.pg_error < 0 ? pgio.pg_error : 0;
}