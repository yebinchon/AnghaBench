#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  index; } ;
struct kiocb {struct file* ki_filp; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {size_t size; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_3__ out; TYPE_1__ in; } ;
struct fuse_args_pages {unsigned int num_pages; struct page** pages; TYPE_2__* descs; int /*<<< orphan*/  args; } ;
struct fuse_io_args {TYPE_4__ write; struct fuse_args_pages ap; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_6__ {unsigned int offset; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_io_args*,struct fuse_file*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static ssize_t FUNC7(struct fuse_io_args *ia,
				     struct kiocb *iocb, struct inode *inode,
				     loff_t pos, size_t count)
{
	struct fuse_args_pages *ap = &ia->ap;
	struct file *file = iocb->ki_filp;
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = ff->fc;
	unsigned int offset, i;
	int err;

	for (i = 0; i < ap->num_pages; i++)
		FUNC2(inode, ap->pages[i]->index);

	FUNC3(ia, ff, pos, count);
	ia->write.in.flags = FUNC4(iocb);

	err = FUNC1(fc, &ap->args);

	offset = ap->descs[0].offset;
	count = ia->write.out.size;
	for (i = 0; i < ap->num_pages; i++) {
		struct page *page = ap->pages[i];

		if (!err && !offset && count >= PAGE_SIZE)
			FUNC0(page);

		if (count > PAGE_SIZE - offset)
			count -= PAGE_SIZE - offset;
		else
			count = 0;
		offset = 0;

		FUNC6(page);
		FUNC5(page);
	}

	return err;
}