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
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/ * meta_ac; int /*<<< orphan*/  data_ac; int /*<<< orphan*/  dealloc; } ;
struct ocfs2_xattr_search {int dummy; } ;
struct ocfs2_xattr_info {int /*<<< orphan*/  xi_name; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_xattr_set_ctxt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ocfs2_super*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ocfs2_super*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
				     struct ocfs2_dinode *di,
				     struct ocfs2_xattr_info *xi,
				     struct ocfs2_xattr_search *xis,
				     struct ocfs2_xattr_search *xbs,
				     struct ocfs2_xattr_set_ctxt *ctxt,
				     int extra_meta,
				     int *credits)
{
	int clusters_add, meta_add, ret;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);

	FUNC1(ctxt, 0, sizeof(struct ocfs2_xattr_set_ctxt));

	FUNC5(&ctxt->dealloc);

	ret = FUNC3(inode, di, xi, xis, xbs,
					&clusters_add, &meta_add, credits);
	if (ret) {
		FUNC2(ret);
		return ret;
	}

	meta_add += extra_meta;
	FUNC8(xi->xi_name, meta_add,
					clusters_add, *credits);

	if (meta_add) {
		ret = FUNC7(osb, meta_add,
							&ctxt->meta_ac);
		if (ret) {
			FUNC2(ret);
			goto out;
		}
	}

	if (clusters_add) {
		ret = FUNC6(osb, clusters_add, &ctxt->data_ac);
		if (ret)
			FUNC2(ret);
	}
out:
	if (ret) {
		if (ctxt->meta_ac) {
			FUNC4(ctxt->meta_ac);
			ctxt->meta_ac = NULL;
		}

		/*
		 * We cannot have an error and a non null ctxt->data_ac.
		 */
	}

	return ret;
}