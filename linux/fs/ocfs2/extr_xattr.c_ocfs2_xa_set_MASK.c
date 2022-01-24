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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xattr_info {int /*<<< orphan*/  xi_value; int /*<<< orphan*/  xi_name_len; int /*<<< orphan*/  xi_name; } ;
struct ocfs2_xa_loc {int /*<<< orphan*/  xl_inode; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ocfs2_xa_loc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ocfs2_xa_loc*) ; 
 int FUNC3 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC4 (struct ocfs2_xa_loc*,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC5 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_xa_loc *loc,
			struct ocfs2_xattr_info *xi,
			struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret;
	u32 name_hash = FUNC6(loc->xl_inode, xi->xi_name,
					      xi->xi_name_len);

	ret = FUNC1(ctxt->handle, loc,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	/*
	 * From here on out, everything is going to modify the buffer a
	 * little.  Errors are going to leave the xattr header in a
	 * sane state.  Thus, even with errors we dirty the sucker.
	 */

	/* Don't worry, we are never called with !xi_value and !xl_entry */
	if (!xi->xi_value) {
		ret = FUNC4(loc, ctxt);
		goto out_dirty;
	}

	ret = FUNC3(loc, xi, name_hash, ctxt);
	if (ret) {
		if (ret != -ENOSPC)
			FUNC0(ret);
		goto out_dirty;
	}

	ret = FUNC5(loc, xi, ctxt);
	if (ret)
		FUNC0(ret);

out_dirty:
	FUNC2(ctxt->handle, loc);

out:
	return ret;
}