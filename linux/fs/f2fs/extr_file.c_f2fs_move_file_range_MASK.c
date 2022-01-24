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
struct inode {scalar_t__ i_sb; size_t i_size; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct TYPE_3__ {scalar_t__ mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  size_t loff_t ;
struct TYPE_4__ {int /*<<< orphan*/ * i_gc_rwsem; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EROFS ; 
 int EXDEV ; 
 int /*<<< orphan*/  F2FS_BLKSIZE ; 
 size_t F2FS_BLKSIZE_BITS ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 struct f2fs_sb_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t WRITE ; 
 int FUNC6 (struct inode*,struct inode*,size_t,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*) ; 
 struct inode* FUNC15 (struct file*) ; 
 int FUNC16 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct file *file_in, loff_t pos_in,
			struct file *file_out, loff_t pos_out, size_t len)
{
	struct inode *src = FUNC15(file_in);
	struct inode *dst = FUNC15(file_out);
	struct f2fs_sb_info *sbi = FUNC2(src);
	size_t olen = len, dst_max_i_size = 0;
	size_t dst_osize;
	int ret;

	if (file_in->f_path.mnt != file_out->f_path.mnt ||
				src->i_sb != dst->i_sb)
		return -EXDEV;

	if (FUNC20(FUNC13(src->i_sb)))
		return -EROFS;

	if (!FUNC5(src->i_mode) || !FUNC5(dst->i_mode))
		return -EINVAL;

	if (FUNC4(src) || FUNC4(dst))
		return -EOPNOTSUPP;

	if (src == dst) {
		if (pos_in == pos_out)
			return 0;
		if (pos_out > pos_in && pos_out < pos_in + len)
			return -EINVAL;
	}

	FUNC17(src);
	if (src != dst) {
		ret = -EBUSY;
		if (!FUNC18(dst))
			goto out;
	}

	ret = -EINVAL;
	if (pos_in + len > src->i_size || pos_in + len < pos_in)
		goto out_unlock;
	if (len == 0)
		olen = len = src->i_size - pos_in;
	if (pos_in + len == src->i_size)
		len = FUNC0(src->i_size, F2FS_BLKSIZE) - pos_in;
	if (len == 0) {
		ret = 0;
		goto out_unlock;
	}

	dst_osize = dst->i_size;
	if (pos_out + olen > dst->i_size)
		dst_max_i_size = pos_out + olen;

	/* verify the end result is block aligned */
	if (!FUNC3(pos_in, F2FS_BLKSIZE) ||
			!FUNC3(pos_in + len, F2FS_BLKSIZE) ||
			!FUNC3(pos_out, F2FS_BLKSIZE))
		goto out_unlock;

	ret = FUNC10(src);
	if (ret)
		goto out_unlock;

	ret = FUNC10(dst);
	if (ret)
		goto out_unlock;

	/* write out all dirty pages from offset */
	ret = FUNC16(src->i_mapping,
					pos_in, pos_in + len);
	if (ret)
		goto out_unlock;

	ret = FUNC16(dst->i_mapping,
					pos_out, pos_out + len);
	if (ret)
		goto out_unlock;

	FUNC9(sbi, true);

	FUNC7(&FUNC1(src)->i_gc_rwsem[WRITE]);
	if (src != dst) {
		ret = -EBUSY;
		if (!FUNC8(&FUNC1(dst)->i_gc_rwsem[WRITE]))
			goto out_src;
	}

	FUNC12(sbi);
	ret = FUNC6(src, dst, pos_in >> F2FS_BLKSIZE_BITS,
				pos_out >> F2FS_BLKSIZE_BITS,
				len >> F2FS_BLKSIZE_BITS, false);

	if (!ret) {
		if (dst_max_i_size)
			FUNC11(dst, dst_max_i_size);
		else if (dst_osize != dst->i_size)
			FUNC11(dst, dst_osize);
	}
	FUNC14(sbi);

	if (src != dst)
		FUNC21(&FUNC1(dst)->i_gc_rwsem[WRITE]);
out_src:
	FUNC21(&FUNC1(src)->i_gc_rwsem[WRITE]);
out_unlock:
	if (src != dst)
		FUNC19(dst);
out:
	FUNC19(src);
	return ret;
}