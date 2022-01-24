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
struct kiocb {struct file* ki_filp; } ;
struct fuse_write_in {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  write_flags; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {size_t size; } ;
struct TYPE_8__ {TYPE_3__ out; struct fuse_write_in in; } ;
struct TYPE_6__ {int /*<<< orphan*/  args; } ;
struct fuse_io_args {TYPE_4__ write; TYPE_2__ ap; TYPE_1__* io; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {int dummy; } ;
struct file {struct fuse_file* private_data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/ * fl_owner_t ;
struct TYPE_5__ {scalar_t__ async; struct kiocb* iocb; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUSE_WRITE_LOCKOWNER ; 
 int FUNC0 (struct fuse_conn*,struct fuse_io_args*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_io_args*,struct fuse_file*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*) ; 

__attribute__((used)) static ssize_t FUNC5(struct fuse_io_args *ia, loff_t pos,
			       size_t count, fl_owner_t owner)
{
	struct kiocb *iocb = ia->io->iocb;
	struct file *file = iocb->ki_filp;
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = ff->fc;
	struct fuse_write_in *inarg = &ia->write.in;
	ssize_t err;

	FUNC3(ia, ff, pos, count);
	inarg->flags = FUNC4(iocb);
	if (owner != NULL) {
		inarg->write_flags |= FUSE_WRITE_LOCKOWNER;
		inarg->lock_owner = FUNC1(fc, owner);
	}

	if (ia->io->async)
		return FUNC0(fc, ia, count);

	err = FUNC2(fc, &ia->ap.args);
	if (!err && ia->write.out.size > count)
		err = -EIO;

	return err ?: ia->write.out.size;
}