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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_page_desc {int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int out_pages; } ;
struct fuse_args_pages {int num_pages; TYPE_1__ args; struct fuse_page_desc* descs; struct page** pages; } ;
struct fuse_io_args {struct fuse_args_pages ap; } ;
struct fuse_file {int open_flags; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; } ;
struct dir_context {int /*<<< orphan*/  pos; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int FOPEN_CACHE_DIR ; 
 int /*<<< orphan*/  FUSE_READDIR ; 
 int /*<<< orphan*/  FUSE_READDIRPLUS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_io_args*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct fuse_conn*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int FUNC10 (struct inode*,struct dir_context*) ; 
 struct fuse_conn* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,struct file*,struct dir_context*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,struct file*,struct dir_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct file *file, struct dir_context *ctx)
{
	int plus;
	ssize_t res;
	struct page *page;
	struct inode *inode = FUNC2(file);
	struct fuse_conn *fc = FUNC11(inode);
	struct fuse_io_args ia = {};
	struct fuse_args_pages *ap = &ia.ap;
	struct fuse_page_desc desc = { .length = PAGE_SIZE };
	u64 attr_version = 0;
	bool locked;

	page = FUNC1(GFP_KERNEL);
	if (!page)
		return -ENOMEM;

	plus = FUNC10(inode, ctx);
	ap->args.out_pages = 1;
	ap->num_pages = 1;
	ap->pages = &page;
	ap->descs = &desc;
	if (plus) {
		attr_version = FUNC3(fc);
		FUNC6(&ia, file, ctx->pos, PAGE_SIZE,
				    FUSE_READDIRPLUS);
	} else {
		FUNC6(&ia, file, ctx->pos, PAGE_SIZE,
				    FUSE_READDIR);
	}
	locked = FUNC5(inode);
	res = FUNC8(fc, &ap->args);
	FUNC9(inode, locked);
	if (res >= 0) {
		if (!res) {
			struct fuse_file *ff = file->private_data;

			if (ff->open_flags & FOPEN_CACHE_DIR)
				FUNC7(file, ctx->pos);
		} else if (plus) {
			res = FUNC14(FUNC12(page), res,
						file, ctx, attr_version);
		} else {
			res = FUNC13(FUNC12(page), res, file,
					    ctx);
		}
	}

	FUNC0(page);
	FUNC4(inode);
	return res;
}