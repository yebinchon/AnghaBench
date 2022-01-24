#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_set_ctxt {scalar_t__ set_abort; } ;
struct ocfs2_xattr_search {int /*<<< orphan*/ * here; scalar_t__ not_found; struct buffer_head* xattr_bh; TYPE_3__* header; void* end; void* base; int /*<<< orphan*/  inode_bh; } ;
struct ocfs2_xattr_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * xh_entries; } ;
struct TYPE_4__ {TYPE_3__ xb_header; } ;
struct ocfs2_xattr_block {int /*<<< orphan*/  xb_flags; TYPE_1__ xb_attrs; } ;
struct ocfs2_xa_loc {int /*<<< orphan*/ * xl_entry; } ;
struct inode {TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {int s_blocksize; } ;

/* Variables and functions */
 int ENOSPC ; 
 int OCFS2_XATTR_INDEXED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_xa_loc*,struct inode*,struct buffer_head*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC5 (struct inode*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC6 (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
				 struct ocfs2_xattr_info *xi,
				 struct ocfs2_xattr_search *xs,
				 struct ocfs2_xattr_set_ctxt *ctxt)
{
	struct buffer_head *new_bh = NULL;
	struct ocfs2_xattr_block *xblk = NULL;
	int ret;
	struct ocfs2_xa_loc loc;

	if (!xs->xattr_bh) {
		ret = FUNC2(inode, xs->inode_bh, ctxt,
					       0, &new_bh);
		if (ret) {
			FUNC1(ret);
			goto end;
		}

		xs->xattr_bh = new_bh;
		xblk = (struct ocfs2_xattr_block *)xs->xattr_bh->b_data;
		xs->header = &xblk->xb_attrs.xb_header;
		xs->base = (void *)xs->header;
		xs->end = (void *)xblk + inode->i_sb->s_blocksize;
		xs->here = xs->header->xh_entries;
	} else
		xblk = (struct ocfs2_xattr_block *)xs->xattr_bh->b_data;

	if (!(FUNC0(xblk->xb_flags) & OCFS2_XATTR_INDEXED)) {
		FUNC3(&loc, inode, xs->xattr_bh,
					      xs->not_found ? NULL : xs->here);

		ret = FUNC4(&loc, xi, ctxt);
		if (!ret)
			xs->here = loc.xl_entry;
		else if ((ret != -ENOSPC) || ctxt->set_abort)
			goto end;
		else {
			ret = FUNC5(inode, xs, ctxt);
			if (ret)
				goto end;
		}
	}

	if (FUNC0(xblk->xb_flags) & OCFS2_XATTR_INDEXED)
		ret = FUNC6(inode, xi, xs, ctxt);

end:
	return ret;
}