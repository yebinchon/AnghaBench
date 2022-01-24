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
struct kiocb {int ki_flags; int /*<<< orphan*/  ki_pos; int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_DIO_WRITE ; 
 struct fuse_io_priv FUNC0 (struct kiocb*) ; 
 int IOCB_DIRECT ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC3 (struct fuse_io_priv*,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct kiocb*) ; 

__attribute__((used)) static ssize_t FUNC10(struct kiocb *iocb, struct iov_iter *from)
{
	struct inode *inode = FUNC1(iocb->ki_filp);
	struct fuse_io_priv io = FUNC0(iocb);
	ssize_t res;

	/* Don't allow parallel writes to the same file */
	FUNC7(inode);
	res = FUNC6(iocb, from);
	if (res > 0) {
		if (!FUNC9(iocb) && iocb->ki_flags & IOCB_DIRECT) {
			res = FUNC2(iocb, from);
		} else {
			res = FUNC3(&io, from, &iocb->ki_pos,
					     FUSE_DIO_WRITE);
		}
	}
	FUNC4(inode);
	if (res > 0)
		FUNC5(inode, iocb->ki_pos);
	FUNC8(inode);

	return res;
}