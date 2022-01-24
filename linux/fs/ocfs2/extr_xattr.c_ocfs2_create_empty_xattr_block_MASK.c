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
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  meta_ac; int /*<<< orphan*/  handle; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  ctxt ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_XATTR_BLOCK_CREATE_CREDITS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_xattr_set_ctxt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct buffer_head*,struct ocfs2_xattr_set_ctxt*,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ocfs2_super*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long long,int) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
					  struct buffer_head *fe_bh,
					  struct buffer_head **ret_bh,
					  int indexed)
{
	int ret;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_xattr_set_ctxt ctxt;

	FUNC3(&ctxt, 0, sizeof(ctxt));
	ret = FUNC8(osb, 1, &ctxt.meta_ac);
	if (ret < 0) {
		FUNC4(ret);
		return ret;
	}

	ctxt.handle = FUNC9(osb, OCFS2_XATTR_BLOCK_CREATE_CREDITS);
	if (FUNC0(ctxt.handle)) {
		ret = FUNC2(ctxt.handle);
		FUNC4(ret);
		goto out;
	}

	FUNC10(
				(unsigned long long)fe_bh->b_blocknr, indexed);
	ret = FUNC6(inode, fe_bh, &ctxt, indexed,
				       ret_bh);
	if (ret)
		FUNC4(ret);

	FUNC5(osb, ctxt.handle);
out:
	FUNC7(ctxt.meta_ac);
	return ret;
}