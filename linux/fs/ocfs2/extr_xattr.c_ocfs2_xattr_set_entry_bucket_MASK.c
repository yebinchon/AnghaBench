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
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xattr_search {int /*<<< orphan*/ * here; int /*<<< orphan*/  bucket; scalar_t__ not_found; } ;
struct ocfs2_xattr_info {int /*<<< orphan*/  xi_name; } ;
struct ocfs2_xa_loc {int /*<<< orphan*/ * xl_entry; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_xa_loc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
					struct ocfs2_xattr_info *xi,
					struct ocfs2_xattr_search *xs,
					struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret;
	struct ocfs2_xa_loc loc;

	FUNC4(xi->xi_name);

	FUNC2(&loc, xs->bucket,
				       xs->not_found ? NULL : xs->here);
	ret = FUNC3(&loc, xi, ctxt);
	if (!ret) {
		xs->here = loc.xl_entry;
		goto out;
	}
	if (ret != -ENOSPC) {
		FUNC0(ret);
		goto out;
	}

	/* Ok, we need space.  Let's try defragmenting the bucket. */
	ret = FUNC1(inode, ctxt->handle,
					xs->bucket);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	ret = FUNC3(&loc, xi, ctxt);
	if (!ret) {
		xs->here = loc.xl_entry;
		goto out;
	}
	if (ret != -ENOSPC)
		FUNC0(ret);


out:
	return ret;
}