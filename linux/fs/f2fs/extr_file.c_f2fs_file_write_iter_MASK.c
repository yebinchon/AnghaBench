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
struct kiocb {int ki_flags; size_t ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  APP_WRITE_IO ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_NO_PREALLOC ; 
 int IOCB_NOWAIT ; 
 int FUNC1 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*,struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,size_t,size_t) ; 
 int FUNC7 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC10 (struct file*) ; 
 int FUNC11 (struct kiocb*,struct iov_iter*) ; 
 int FUNC12 (struct kiocb*,int) ; 
 size_t FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 size_t FUNC17 (struct iov_iter*) ; 
 scalar_t__ FUNC18 (struct iov_iter*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,size_t,size_t,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC22(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = FUNC10(file);
	ssize_t ret;

	if (FUNC21(FUNC3(FUNC0(inode)))) {
		ret = -EIO;
		goto out;
	}

	if (iocb->ki_flags & IOCB_NOWAIT) {
		if (!FUNC15(inode)) {
			ret = -EAGAIN;
			goto out;
		}
	} else {
		FUNC14(inode);
	}

	ret = FUNC11(iocb, from);
	if (ret > 0) {
		bool preallocated = false;
		size_t target_size = 0;
		int err;

		if (FUNC18(from, FUNC17(from)))
			FUNC19(inode, FI_NO_PREALLOC);

		if ((iocb->ki_flags & IOCB_NOWAIT)) {
			if (!FUNC6(inode, iocb->ki_pos,
						FUNC17(from)) ||
				FUNC5(inode) ||
				FUNC4(inode, iocb, from)) {
				FUNC2(inode, FI_NO_PREALLOC);
				FUNC16(inode);
				ret = -EAGAIN;
				goto out;
			}
		} else {
			preallocated = true;
			target_size = iocb->ki_pos + FUNC17(from);

			err = FUNC7(iocb, from);
			if (err) {
				FUNC2(inode, FI_NO_PREALLOC);
				FUNC16(inode);
				ret = err;
				goto out;
			}
		}
		ret = FUNC1(iocb, from);
		FUNC2(inode, FI_NO_PREALLOC);

		/* if we couldn't write data, we should deallocate blocks. */
		if (preallocated && FUNC13(inode) < target_size)
			FUNC8(inode);

		if (ret > 0)
			FUNC9(FUNC0(inode), APP_WRITE_IO, ret);
	}
	FUNC16(inode);
out:
	FUNC20(inode, iocb->ki_pos,
					FUNC17(from), ret);
	if (ret > 0)
		ret = FUNC12(iocb, ret);
	return ret;
}