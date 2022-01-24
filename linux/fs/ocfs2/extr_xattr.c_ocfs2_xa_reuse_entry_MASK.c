#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct ocfs2_xattr_info {scalar_t__ xi_value_len; int /*<<< orphan*/  xi_name_len; } ;
struct ocfs2_xa_loc {TYPE_1__* xl_entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  xe_value_size; int /*<<< orphan*/  xe_name_offset; int /*<<< orphan*/  xe_name_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OCFS2_XATTR_INLINE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_xa_loc*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_xa_loc*) ; 
 char* FUNC10 (struct ocfs2_xa_loc*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (struct ocfs2_xa_loc*) ; 
 int FUNC12 (struct ocfs2_xa_loc*,scalar_t__,struct ocfs2_xattr_set_ctxt*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC15(struct ocfs2_xa_loc *loc,
				struct ocfs2_xattr_info *xi,
				struct ocfs2_xattr_set_ctxt *ctxt)
{
	int rc = 0;
	int name_size = FUNC1(xi->xi_name_len);
	unsigned int orig_clusters;
	char *nameval_buf;
	int xe_local = FUNC13(loc->xl_entry);
	int xi_local = xi->xi_value_len <= OCFS2_XATTR_INLINE_SIZE;

	FUNC0(FUNC1(loc->xl_entry->xe_name_len) !=
	       name_size);

	nameval_buf = FUNC10(loc,
				FUNC3(loc->xl_entry->xe_name_offset));
	if (xe_local) {
		FUNC5(nameval_buf + name_size, 0,
		       FUNC7(loc->xl_entry) - name_size);
		if (!xi_local)
			FUNC9(loc);
	} else {
		orig_clusters = FUNC11(loc);
		if (xi_local) {
			rc = FUNC12(loc, 0, ctxt);
			if (rc < 0)
				FUNC6(rc);
			else
				FUNC5(nameval_buf + name_size, 0,
				       FUNC7(loc->xl_entry) -
				       name_size);
		} else if (FUNC4(loc->xl_entry->xe_value_size) >
			   xi->xi_value_len) {
			rc = FUNC12(loc, xi->xi_value_len,
						     ctxt);
			if (rc < 0)
				FUNC6(rc);
		}

		if (rc) {
			FUNC8(loc, "reusing",
							orig_clusters);
			goto out;
		}
	}

	loc->xl_entry->xe_value_size = FUNC2(xi->xi_value_len);
	FUNC14(loc->xl_entry, xi_local);

out:
	return rc;
}