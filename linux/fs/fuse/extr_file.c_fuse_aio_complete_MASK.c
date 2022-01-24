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
struct inode {int dummy; } ;
struct fuse_io_priv {int err; scalar_t__ bytes; int reqs; int /*<<< orphan*/  refcnt; TYPE_1__* iocb; scalar_t__ blocking; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  attr_version; } ;
struct fuse_conn {int /*<<< orphan*/  attr_version; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* ki_complete ) (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ki_filp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct fuse_io_priv*) ; 
 int /*<<< orphan*/  fuse_io_release ; 
 struct fuse_conn* FUNC4 (struct inode*) ; 
 struct fuse_inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct fuse_io_priv *io, int err, ssize_t pos)
{
	int left;

	FUNC7(&io->lock);
	if (err)
		io->err = io->err ? : err;
	else if (pos >= 0 && (io->bytes < 0 || pos < io->bytes))
		io->bytes = pos;

	left = --io->reqs;
	if (!left && io->blocking)
		FUNC1(io->done);
	FUNC8(&io->lock);

	if (!left && !io->blocking) {
		ssize_t res = FUNC3(io);

		if (res >= 0) {
			struct inode *inode = FUNC2(io->iocb->ki_filp);
			struct fuse_conn *fc = FUNC4(inode);
			struct fuse_inode *fi = FUNC5(inode);

			FUNC7(&fi->lock);
			fi->attr_version = FUNC0(&fc->attr_version);
			FUNC8(&fi->lock);
		}

		io->iocb->ki_complete(io->iocb, res, 0);
	}

	FUNC6(&io->refcnt, fuse_io_release);
}