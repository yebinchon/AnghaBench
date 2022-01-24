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
struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {unsigned int ip_attr; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int OCFS2_DIRSYNC_FL ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC15 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct inode*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, unsigned flags,
				unsigned mask)
{
	struct ocfs2_inode_info *ocfs2_inode = FUNC1(inode);
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	handle_t *handle = NULL;
	struct buffer_head *bh = NULL;
	unsigned oldflags;
	int status;

	FUNC6(inode);

	status = FUNC11(inode, &bh, 1);
	if (status < 0) {
		FUNC9(status);
		goto bail;
	}

	status = -EACCES;
	if (!FUNC7(inode))
		goto bail_unlock;

	if (!FUNC4(inode->i_mode))
		flags &= ~OCFS2_DIRSYNC_FL;

	oldflags = ocfs2_inode->ip_attr;
	flags = flags & mask;
	flags |= oldflags & ~mask;

	status = FUNC16(inode, oldflags, flags);
	if (status)
		goto bail_unlock;

	handle = FUNC15(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC3(handle);
		FUNC9(status);
		goto bail_unlock;
	}

	ocfs2_inode->ip_attr = flags;
	FUNC14(inode);

	status = FUNC13(handle, inode, bh);
	if (status < 0)
		FUNC9(status);

	FUNC10(osb, handle);

bail_unlock:
	FUNC12(inode, 1);
bail:
	FUNC8(inode);

	FUNC5(bh);

	return status;
}