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
struct ocfs2_dinode {int /*<<< orphan*/  i_mtime_nsec; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_attr; int /*<<< orphan*/  i_dyn_features; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_clusters; int /*<<< orphan*/  i_xattr_inline_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mtime; TYPE_1__ i_ctime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_blocks; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_dyn_features; int /*<<< orphan*/  ip_attr; int /*<<< orphan*/  ip_clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct inode *s_inode,
				  struct buffer_head *s_bh,
				  struct inode *t_inode,
				  struct buffer_head *t_bh,
				  bool preserve)
{
	int ret;
	handle_t *handle;
	struct ocfs2_dinode *s_di = (struct ocfs2_dinode *)s_bh->b_data;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)t_bh->b_data;
	loff_t size = FUNC8(s_inode);

	handle = FUNC14(FUNC3(t_inode->i_sb),
				   OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		ret = FUNC4(handle);
		FUNC10(ret);
		return ret;
	}

	ret = FUNC12(handle, FUNC0(t_inode), t_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC10(ret);
		goto out_commit;
	}

	FUNC15(&FUNC2(t_inode)->ip_lock);
	FUNC2(t_inode)->ip_clusters = FUNC2(s_inode)->ip_clusters;
	FUNC2(t_inode)->ip_attr = FUNC2(s_inode)->ip_attr;
	FUNC2(t_inode)->ip_dyn_features = FUNC2(s_inode)->ip_dyn_features;
	FUNC16(&FUNC2(t_inode)->ip_lock);
	FUNC9(t_inode, size);
	t_inode->i_blocks = s_inode->i_blocks;

	di->i_xattr_inline_size = s_di->i_xattr_inline_size;
	di->i_clusters = s_di->i_clusters;
	di->i_size = s_di->i_size;
	di->i_dyn_features = s_di->i_dyn_features;
	di->i_attr = s_di->i_attr;

	if (preserve) {
		t_inode->i_uid = s_inode->i_uid;
		t_inode->i_gid = s_inode->i_gid;
		t_inode->i_mode = s_inode->i_mode;
		di->i_uid = s_di->i_uid;
		di->i_gid = s_di->i_gid;
		di->i_mode = s_di->i_mode;

		/*
		 * update time.
		 * we want mtime to appear identical to the source and
		 * update ctime.
		 */
		t_inode->i_ctime = FUNC7(t_inode);

		di->i_ctime = FUNC6(t_inode->i_ctime.tv_sec);
		di->i_ctime_nsec = FUNC5(t_inode->i_ctime.tv_nsec);

		t_inode->i_mtime = s_inode->i_mtime;
		di->i_mtime = s_di->i_mtime;
		di->i_mtime_nsec = s_di->i_mtime_nsec;
	}

	FUNC13(handle, t_bh);

out_commit:
	FUNC11(FUNC3(t_inode->i_sb), handle);
	return ret;
}