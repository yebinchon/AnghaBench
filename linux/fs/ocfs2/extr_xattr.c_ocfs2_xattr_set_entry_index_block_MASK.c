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
struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct ocfs2_xattr_search {int not_found; int /*<<< orphan*/  xattr_bh; int /*<<< orphan*/  bucket; } ;
struct ocfs2_xattr_info {int /*<<< orphan*/  xi_name; int /*<<< orphan*/  xi_name_index; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_xattr_search*) ; 
 int FUNC5 (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
					     struct ocfs2_xattr_info *xi,
					     struct ocfs2_xattr_search *xs,
					     struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret;

	FUNC6(xi->xi_name);

	ret = FUNC5(inode, xi, xs, ctxt);
	if (!ret)
		goto out;
	if (ret != -ENOSPC) {
		FUNC0(ret);
		goto out;
	}

	/* Ack, need more space.  Let's try to get another bucket! */

	/*
	 * We do not allow for overlapping ranges between buckets. And
	 * the maximum number of collisions we will allow for then is
	 * one bucket's worth, so check it here whether we need to
	 * add a new bucket for the insert.
	 */
	ret = FUNC2(inode,
						 xs->bucket,
						 xi->xi_name);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	ret = FUNC1(inode,
					 xs->xattr_bh,
					 xs->bucket,
					 ctxt);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	/*
	 * ocfs2_add_new_xattr_bucket() will have updated
	 * xs->bucket if it moved, but it will not have updated
	 * any of the other search fields.  Thus, we drop it and
	 * re-search.  Everything should be cached, so it'll be
	 * quick.
	 */
	FUNC3(xs->bucket);
	ret = FUNC4(inode, xs->xattr_bh,
					   xi->xi_name_index,
					   xi->xi_name, xs);
	if (ret && ret != -ENODATA)
		goto out;
	xs->not_found = ret;

	/* Ok, we have a new bucket, let's try again */
	ret = FUNC5(inode, xi, xs, ctxt);
	if (ret && (ret != -ENOSPC))
		FUNC0(ret);

out:
	return ret;
}