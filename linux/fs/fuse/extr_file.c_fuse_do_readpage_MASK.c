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
typedef  int /*<<< orphan*/  u64 ;
struct page {int /*<<< orphan*/  index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct fuse_page_desc {scalar_t__ length; } ;
struct TYPE_5__ {int page_zeroing; int out_pages; } ;
struct TYPE_6__ {int num_pages; TYPE_2__ args; struct fuse_page_desc* descs; struct page** pages; } ;
struct fuse_io_args {TYPE_3__ ap; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_READ ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_io_args*,struct file*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC4 (struct fuse_conn*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct fuse_conn *fc = FUNC6(inode);
	loff_t pos = FUNC7(page);
	struct fuse_page_desc desc = { .length = PAGE_SIZE };
	struct fuse_io_args ia = {
		.ap.args.page_zeroing = true,
		.ap.args.out_pages = true,
		.ap.num_pages = 1,
		.ap.pages = &page,
		.ap.descs = &desc,
	};
	ssize_t res;
	u64 attr_ver;

	/*
	 * Page writeback can extend beyond the lifetime of the
	 * page-cache page, so make sure we read a properly synced
	 * page.
	 */
	FUNC5(inode, page->index);

	attr_ver = FUNC1(fc);

	FUNC2(&ia, file, pos, desc.length, FUSE_READ);
	res = FUNC4(fc, &ia.ap.args);
	if (res < 0)
		return res;
	/*
	 * Short read means EOF.  If file size is larger, truncate it
	 */
	if (res < desc.length)
		FUNC3(inode, attr_ver, res, &ia.ap);

	FUNC0(page);

	return 0;
}