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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct inode*,int) ; 

__attribute__((used)) static handle_t *FUNC11(struct inode *inode,
						      struct buffer_head *di_bh,
						      loff_t start_byte,
						      loff_t length)
{
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	handle_t *handle = NULL;
	int ret = 0;

	if (!FUNC8(inode))
		goto out;

	handle = FUNC9(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC2(handle)) {
		ret = -ENOMEM;
		FUNC4(ret);
		goto out;
	}

	ret = FUNC6(handle, inode, start_byte, length);
	if (ret < 0) {
		FUNC4(ret);
		goto out;
	}

	ret = FUNC7(handle, FUNC1(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret)
		FUNC4(ret);
	FUNC10(handle, inode, 1);

out:
	if (ret) {
		if (!FUNC2(handle))
			FUNC5(osb, handle);
		handle = FUNC0(ret);
	}
	return handle;
}