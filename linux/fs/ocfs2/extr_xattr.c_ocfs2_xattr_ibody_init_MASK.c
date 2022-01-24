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
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_super {unsigned int s_xattr_inline_size; } ;
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_lock; } ;
struct ocfs2_inline_data {int /*<<< orphan*/  id_count; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_count; } ;
struct TYPE_2__ {struct ocfs2_extent_list i_list; struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {void* i_dyn_features; void* i_xattr_inline_size; TYPE_1__ id2; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int OCFS2_HAS_XATTR_FL ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int OCFS2_INLINE_XATTR_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
				  struct buffer_head *di_bh,
				  struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret;
	struct ocfs2_inode_info *oi = FUNC1(inode);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	unsigned int xattrsize = osb->s_xattr_inline_size;

	if (!FUNC9(inode, di)) {
		ret = -ENOSPC;
		goto out;
	}

	ret = FUNC7(ctxt->handle, FUNC0(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	/*
	 * Adjust extent record count or inline data size
	 * to reserve space for extended attribute.
	 */
	if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		struct ocfs2_inline_data *idata = &di->id2.i_data;
		FUNC4(&idata->id_count, -xattrsize);
	} else if (!(FUNC6(inode))) {
		struct ocfs2_extent_list *el = &di->id2.i_list;
		FUNC4(&el->l_count, -(xattrsize /
					     sizeof(struct ocfs2_extent_rec)));
	}
	di->i_xattr_inline_size = FUNC3(xattrsize);

	FUNC10(&oi->ip_lock);
	oi->ip_dyn_features |= OCFS2_INLINE_XATTR_FL|OCFS2_HAS_XATTR_FL;
	di->i_dyn_features = FUNC3(oi->ip_dyn_features);
	FUNC11(&oi->ip_lock);

	FUNC8(ctxt->handle, di_bh);

out:
	return ret;
}