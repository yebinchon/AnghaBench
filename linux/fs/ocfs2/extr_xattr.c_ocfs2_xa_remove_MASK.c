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
struct ocfs2_xa_loc {int /*<<< orphan*/  xl_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_xa_loc*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_xa_loc*) ; 
 unsigned int FUNC3 (struct ocfs2_xa_loc*) ; 
 int FUNC4 (struct ocfs2_xa_loc*,int /*<<< orphan*/ ,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_xa_loc *loc,
			   struct ocfs2_xattr_set_ctxt *ctxt)
{
	int rc = 0;
	unsigned int orig_clusters;

	if (!FUNC5(loc->xl_entry)) {
		orig_clusters = FUNC3(loc);
		rc = FUNC4(loc, 0, ctxt);
		if (rc) {
			FUNC0(rc);
			/*
			 * Since this is remove, we can return 0 if
			 * ocfs2_xa_cleanup_value_truncate() is going to
			 * wipe the entry anyway.  So we check the
			 * cluster count as well.
			 */
			if (orig_clusters != FUNC3(loc))
				rc = 0;
			FUNC1(loc, "removing",
							orig_clusters);
			if (rc)
				goto out;
		}
	}

	FUNC2(loc);

out:
	return rc;
}