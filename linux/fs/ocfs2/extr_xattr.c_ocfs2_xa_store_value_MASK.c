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
struct ocfs2_xattr_value_buf {int dummy; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xattr_info {int /*<<< orphan*/  xi_value_len; int /*<<< orphan*/  xi_value; int /*<<< orphan*/  xi_name_len; } ;
struct ocfs2_xa_loc {int /*<<< orphan*/  xl_inode; TYPE_1__* xl_entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  xe_name_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_XATTR_INLINE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_xattr_value_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_xa_loc*,struct ocfs2_xattr_value_buf*) ; 
 char* FUNC5 (struct ocfs2_xa_loc*,int) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_xa_loc *loc,
				struct ocfs2_xattr_info *xi,
				struct ocfs2_xattr_set_ctxt *ctxt)
{
	int rc = 0;
	int nameval_offset = FUNC2(loc->xl_entry->xe_name_offset);
	int name_size = FUNC0(xi->xi_name_len);
	char *nameval_buf;
	struct ocfs2_xattr_value_buf vb;

	nameval_buf = FUNC5(loc, nameval_offset);
	if (xi->xi_value_len > OCFS2_XATTR_INLINE_SIZE) {
		FUNC4(loc, &vb);
		rc = FUNC1(loc->xl_inode,
						     ctxt->handle, &vb,
						     xi->xi_value,
						     xi->xi_value_len);
	} else
		FUNC3(nameval_buf + name_size, xi->xi_value, xi->xi_value_len);

	return rc;
}