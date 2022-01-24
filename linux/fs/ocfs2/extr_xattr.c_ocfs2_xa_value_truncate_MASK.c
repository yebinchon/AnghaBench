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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_xattr_value_buf {int dummy; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xa_loc {int /*<<< orphan*/  xl_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_xa_loc*,struct ocfs2_xattr_value_buf*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ocfs2_xa_loc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ocfs2_xattr_value_buf*,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_xa_loc *loc, u64 bytes,
				   struct ocfs2_xattr_set_ctxt *ctxt)
{
	int trunc_rc, access_rc;
	struct ocfs2_xattr_value_buf vb;

	FUNC0(loc, &vb);
	trunc_rc = FUNC2(loc->xl_inode, &vb, bytes,
					      ctxt);

	/*
	 * The caller of ocfs2_xa_value_truncate() has already called
	 * ocfs2_xa_journal_access on the loc.  However, The truncate code
	 * calls ocfs2_extend_trans().  This may commit the previous
	 * transaction and open a new one.  If this is a bucket, truncate
	 * could leave only vb->vb_bh set up for journaling.  Meanwhile,
	 * the caller is expecting to dirty the entire bucket.  So we must
	 * reset the journal work.  We do this even if truncate has failed,
	 * as it could have failed after committing the extend.
	 */
	access_rc = FUNC1(ctxt->handle, loc,
					    OCFS2_JOURNAL_ACCESS_WRITE);

	/* Errors in truncate take precedence */
	return trunc_rc ? trunc_rc : access_rc;
}