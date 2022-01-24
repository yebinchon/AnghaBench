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
typedef  int u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  ip_blkno; } ;
struct TYPE_5__ {int s_clustersize_bits; } ;

/* Variables and functions */
 int EAGAIN ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct inode*,struct buffer_head**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct buffer_head**,int,int) ; 
 int FUNC8 (struct inode*,struct buffer_head*,int,size_t) ; 
 int FUNC9 (struct inode*,struct buffer_head*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,size_t,int) ; 

__attribute__((used)) static int FUNC13(struct file *file,
					 loff_t pos, size_t count, int wait)
{
	int ret = 0, meta_level = 0, overwrite_io = 0;
	int write_sem = 0;
	struct dentry *dentry = file->f_path.dentry;
	struct inode *inode = FUNC2(dentry);
	struct buffer_head *di_bh = NULL;
	u32 cpos;
	u32 clusters;

	/*
	 * We start with a read level meta lock and only jump to an ex
	 * if we need to make modifications here.
	 */
	for(;;) {
		ret = FUNC6(inode,
						       &di_bh,
						       meta_level,
						       overwrite_io,
						       write_sem,
						       wait);
		if (ret < 0) {
			if (ret != -EAGAIN)
				FUNC3(ret);
			goto out;
		}

		/*
		 * Check if IO will overwrite allocated blocks in case
		 * IOCB_NOWAIT flag is set.
		 */
		if (!wait && !overwrite_io) {
			overwrite_io = 1;

			ret = FUNC8(inode, di_bh, pos, count);
			if (ret < 0) {
				if (ret != -EAGAIN)
					FUNC3(ret);
				goto out_unlock;
			}
		}

		/* Clear suid / sgid if necessary. We do this here
		 * instead of later in the write path because
		 * remove_suid() calls ->setattr without any hint that
		 * we may have already done our cluster locking. Since
		 * ocfs2_setattr() *must* take cluster locks to
		 * proceed, this will lead us to recursively lock the
		 * inode. There's also the dinode i_size state which
		 * can be lost via setattr during extending writes (we
		 * set inode->i_size at the end of a write. */
		if (FUNC11(dentry)) {
			if (meta_level == 0) {
				FUNC7(inode,
								   &di_bh,
								   meta_level,
								   write_sem);
				meta_level = 1;
				continue;
			}

			ret = FUNC10(inode);
			if (ret < 0) {
				FUNC3(ret);
				goto out_unlock;
			}
		}

		ret = FUNC4(inode, pos, count);
		if (ret == 1) {
			FUNC7(inode,
							   &di_bh,
							   meta_level,
							   write_sem);
			ret = FUNC6(inode,
							       &di_bh,
							       meta_level,
							       overwrite_io,
							       1,
							       wait);
			write_sem = 1;
			if (ret < 0) {
				if (ret != -EAGAIN)
					FUNC3(ret);
				goto out;
			}

			cpos = pos >> FUNC1(inode->i_sb)->s_clustersize_bits;
			clusters =
				FUNC5(inode->i_sb, pos + count) - cpos;
			ret = FUNC9(inode, di_bh, cpos, clusters, UINT_MAX);
		}

		if (ret < 0) {
			if (ret != -EAGAIN)
				FUNC3(ret);
			goto out_unlock;
		}

		break;
	}

out_unlock:
	FUNC12(FUNC0(inode)->ip_blkno,
					    pos, count, wait);

	FUNC7(inode,
					   &di_bh,
					   meta_level,
					   write_sem);

out:
	return ret;
}