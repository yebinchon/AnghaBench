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
struct kiocb {int ki_hint; int ki_flags; scalar_t__ ki_pos; TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {TYPE_2__* i_sb; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode_info {int /*<<< orphan*/ * i_gc_rwsem; } ;
struct address_space {struct inode* host; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
typedef  enum rw_hint { ____Placeholder_rw_hint } rw_hint ;
struct TYPE_6__ {int whint_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_4__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_DIRECT_IO ; 
 int DIO_LOCKING ; 
 int DIO_SKIP_HOLES ; 
 int EAGAIN ; 
 struct f2fs_inode_info* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 TYPE_3__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FI_UPDATE_WRITE ; 
 int IOCB_NOWAIT ; 
 size_t READ ; 
 int WHINT_MODE_OFF ; 
 int WRITE ; 
 int WRITE_LIFE_NOT_SET ; 
 int FUNC3 (struct kiocb*,struct inode*,int /*<<< orphan*/ ,struct iov_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct inode*,struct kiocb*,struct iov_iter*) ; 
 int FUNC5 (struct inode*,struct iov_iter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  f2fs_dio_submit_bio ; 
 scalar_t__ FUNC8 (struct inode*,struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct address_space*,scalar_t__) ; 
 int /*<<< orphan*/  get_data_block_dio ; 
 int /*<<< orphan*/  get_data_block_dio_write ; 
 size_t FUNC11 (struct iov_iter*) ; 
 int FUNC12 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,size_t,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC17(struct kiocb *iocb, struct iov_iter *iter)
{
	struct address_space *mapping = iocb->ki_filp->f_mapping;
	struct inode *inode = mapping->host;
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct f2fs_inode_info *fi = FUNC0(inode);
	size_t count = FUNC11(iter);
	loff_t offset = iocb->ki_pos;
	int rw = FUNC12(iter);
	int err;
	enum rw_hint hint = iocb->ki_hint;
	int whint_mode = FUNC2(sbi).whint_mode;
	bool do_opu;

	err = FUNC5(inode, iter, offset);
	if (err)
		return err < 0 ? err : 0;

	if (FUNC8(inode, iocb, iter))
		return 0;

	do_opu = FUNC4(inode, iocb, iter);

	FUNC14(inode, offset, count, rw);

	if (rw == WRITE && whint_mode == WHINT_MODE_OFF)
		iocb->ki_hint = WRITE_LIFE_NOT_SET;

	if (iocb->ki_flags & IOCB_NOWAIT) {
		if (!FUNC7(&fi->i_gc_rwsem[rw])) {
			iocb->ki_hint = hint;
			err = -EAGAIN;
			goto out;
		}
		if (do_opu && !FUNC7(&fi->i_gc_rwsem[READ])) {
			FUNC16(&fi->i_gc_rwsem[rw]);
			iocb->ki_hint = hint;
			err = -EAGAIN;
			goto out;
		}
	} else {
		FUNC6(&fi->i_gc_rwsem[rw]);
		if (do_opu)
			FUNC6(&fi->i_gc_rwsem[READ]);
	}

	err = FUNC3(iocb, inode, inode->i_sb->s_bdev,
			iter, rw == WRITE ? get_data_block_dio_write :
			get_data_block_dio, NULL, f2fs_dio_submit_bio,
			DIO_LOCKING | DIO_SKIP_HOLES);

	if (do_opu)
		FUNC16(&fi->i_gc_rwsem[READ]);

	FUNC16(&fi->i_gc_rwsem[rw]);

	if (rw == WRITE) {
		if (whint_mode == WHINT_MODE_OFF)
			iocb->ki_hint = hint;
		if (err > 0) {
			FUNC9(FUNC1(inode), APP_DIRECT_IO,
									err);
			if (!do_opu)
				FUNC13(inode, FI_UPDATE_WRITE);
		} else if (err < 0) {
			FUNC10(mapping, offset + count);
		}
	}

out:
	FUNC15(inode, offset, count, rw, err);

	return err;
}