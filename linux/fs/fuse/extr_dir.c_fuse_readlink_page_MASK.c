#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_page_desc {int length; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_4__ {int out_pages; int out_argvar; int page_zeroing; int out_numargs; TYPE_1__* out_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct fuse_args_pages {int num_pages; TYPE_2__ args; struct fuse_page_desc* descs; struct page** pages; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUSE_READLINK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct fuse_conn*,TYPE_2__*) ; 
 struct fuse_conn* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 char* FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct page *page)
{
	struct fuse_conn *fc = FUNC3(inode);
	struct fuse_page_desc desc = { .length = PAGE_SIZE - 1 };
	struct fuse_args_pages ap = {
		.num_pages = 1,
		.pages = &page,
		.descs = &desc,
	};
	char *link;
	ssize_t res;

	ap.args.opcode = FUSE_READLINK;
	ap.args.nodeid = FUNC4(inode);
	ap.args.out_pages = true;
	ap.args.out_argvar = true;
	ap.args.page_zeroing = true;
	ap.args.out_numargs = 1;
	ap.args.out_args[0].size = desc.length;
	res = FUNC2(fc, &ap.args);

	FUNC1(inode);

	if (res < 0)
		return res;

	if (FUNC0(res >= PAGE_SIZE))
		return -EIO;

	link = FUNC5(page);
	link[res] = '\0';

	return 0;
}