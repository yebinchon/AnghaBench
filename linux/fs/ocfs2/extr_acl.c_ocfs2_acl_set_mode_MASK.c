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
typedef  int /*<<< orphan*/  umode_t ;
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__ i_ctime; int /*<<< orphan*/  i_mode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC14 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, struct buffer_head *di_bh,
			      handle_t *handle, umode_t new_mode)
{
	int ret, commit_handle = 0;
	struct ocfs2_dinode *di;

	if (di_bh == NULL) {
		ret = FUNC14(inode, &di_bh);
		if (ret) {
			FUNC10(ret);
			goto out;
		}
	} else
		FUNC9(di_bh);

	if (handle == NULL) {
		handle = FUNC15(FUNC2(inode->i_sb),
					   OCFS2_INODE_UPDATE_CREDITS);
		if (FUNC1(handle)) {
			ret = FUNC3(handle);
			FUNC10(ret);
			goto out_brelse;
		}

		commit_handle = 1;
	}

	di = (struct ocfs2_dinode *)di_bh->b_data;
	ret = FUNC12(handle, FUNC0(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC10(ret);
		goto out_commit;
	}

	inode->i_mode = new_mode;
	inode->i_ctime = FUNC8(inode);
	di->i_mode = FUNC5(inode->i_mode);
	di->i_ctime = FUNC7(inode->i_ctime.tv_sec);
	di->i_ctime_nsec = FUNC6(inode->i_ctime.tv_nsec);
	FUNC16(handle, inode, 0);

	FUNC13(handle, di_bh);

out_commit:
	if (commit_handle)
		FUNC11(FUNC2(inode->i_sb), handle);
out_brelse:
	FUNC4(di_bh);
out:
	return ret;
}