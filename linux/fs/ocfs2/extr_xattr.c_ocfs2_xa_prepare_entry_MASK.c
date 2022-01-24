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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_xattr_set_ctxt {int set_abort; } ;
struct ocfs2_xattr_info {scalar_t__ xi_value_len; } ;
struct ocfs2_xa_loc {TYPE_1__* xl_entry; } ;
typedef  scalar_t__ __le64 ;
struct TYPE_2__ {scalar_t__ xe_value_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ OCFS2_XATTR_INLINE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ; 
 scalar_t__ FUNC3 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ; 
 int FUNC4 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_xa_loc*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_xa_loc*) ; 
 int FUNC7 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,struct ocfs2_xattr_set_ctxt*) ; 
 unsigned int FUNC8 (struct ocfs2_xa_loc*) ; 
 int FUNC9 (struct ocfs2_xa_loc*,scalar_t__,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_xa_loc*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct ocfs2_xa_loc *loc,
				  struct ocfs2_xattr_info *xi,
				  u32 name_hash,
				  struct ocfs2_xattr_set_ctxt *ctxt)
{
	int rc = 0;
	unsigned int orig_clusters;
	__le64 orig_value_size = 0;

	rc = FUNC4(loc, xi);
	if (rc)
		goto out;

	if (!loc->xl_entry) {
		rc = -EINVAL;
		goto out;
	}

	if (FUNC3(loc, xi)) {
		orig_value_size = loc->xl_entry->xe_value_size;
		rc = FUNC7(loc, xi, ctxt);
		if (rc)
			goto out;
		goto alloc_value;
	}

	if (!FUNC11(loc->xl_entry)) {
		orig_clusters = FUNC8(loc);
		rc = FUNC9(loc, 0, ctxt);
		if (rc) {
			FUNC1(rc);
			FUNC5(loc,
							"overwriting",
							orig_clusters);
			goto out;
		}
	}
	FUNC10(loc);

	/*
	 * If we get here, we have a blank entry.  Fill it.  We grow our
	 * name+value pair back from the end.
	 */
	FUNC2(loc, xi);
	if (xi->xi_value_len > OCFS2_XATTR_INLINE_SIZE)
		FUNC6(loc);

alloc_value:
	if (xi->xi_value_len > OCFS2_XATTR_INLINE_SIZE) {
		orig_clusters = FUNC8(loc);
		rc = FUNC9(loc, xi->xi_value_len, ctxt);
		if (rc < 0) {
			ctxt->set_abort = 1;
			FUNC5(loc, "growing",
							orig_clusters);
			/*
			 * If we were growing an existing value,
			 * ocfs2_xa_cleanup_value_truncate() won't remove
			 * the entry. We need to restore the original value
			 * size.
			 */
			if (loc->xl_entry) {
				FUNC0(!orig_value_size);
				loc->xl_entry->xe_value_size = orig_value_size;
			}
			FUNC1(rc);
		}
	}

out:
	return rc;
}