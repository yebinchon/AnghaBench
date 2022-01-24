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
struct kiocb {int ki_flags; int* private; int /*<<< orphan*/  ki_pos; int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  EIOCBQUEUED ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IOCB_DIRECT ; 
 int IOCB_NOWAIT ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct kiocb*,struct iov_iter*) ; 
 struct inode* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC17 (struct kiocb*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC19(struct kiocb *iocb, struct iov_iter *from)
{
	struct inode *inode = FUNC11(iocb->ki_filp);
	int o_direct = iocb->ki_flags & IOCB_DIRECT;
	int unaligned_aio = 0;
	int overwrite = 0;
	ssize_t ret;

	if (FUNC18(FUNC4(FUNC0(inode->i_sb))))
		return -EIO;

#ifdef CONFIG_FS_DAX
	if (IS_DAX(inode))
		return ext4_dax_write_iter(iocb, from);
#endif

	if (!FUNC14(inode)) {
		if (iocb->ki_flags & IOCB_NOWAIT)
			return -EAGAIN;
		FUNC13(inode);
	}

	ret = FUNC10(iocb, from);
	if (ret <= 0)
		goto out;

	/*
	 * Unaligned direct AIO must be serialized among each other as zeroing
	 * of partial blocks of two competing unaligned AIOs can result in data
	 * corruption.
	 */
	if (o_direct && FUNC7(inode, EXT4_INODE_EXTENTS) &&
	    !FUNC17(iocb) &&
	    FUNC8(inode, from, iocb->ki_pos)) {
		unaligned_aio = 1;
		FUNC9(inode);
	}

	iocb->private = &overwrite;
	/* Check whether we do a DIO overwrite or not */
	if (o_direct && !unaligned_aio) {
		if (FUNC5(inode, iocb->ki_pos, FUNC16(from))) {
			if (FUNC6(inode))
				overwrite = 1;
		} else if (iocb->ki_flags & IOCB_NOWAIT) {
			ret = -EAGAIN;
			goto out;
		}
	}

	ret = FUNC2(iocb, from);
	/*
	 * Unaligned direct AIO must be the only IO in flight. Otherwise
	 * overlapping aligned IO after unaligned might result in data
	 * corruption.
	 */
	if (ret == -EIOCBQUEUED && unaligned_aio)
		FUNC9(inode);
	FUNC15(inode);

	if (ret > 0)
		ret = FUNC12(iocb, ret);

	return ret;

out:
	FUNC15(inode);
	return ret;
}