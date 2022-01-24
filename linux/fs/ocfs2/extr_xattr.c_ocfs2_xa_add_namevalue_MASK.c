#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_info {scalar_t__ xi_value_len; int /*<<< orphan*/  xi_name_len; int /*<<< orphan*/  xi_name; int /*<<< orphan*/  xi_name_index; } ;
struct ocfs2_xa_loc {TYPE_2__* xl_entry; TYPE_1__* xl_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  xe_name_offset; int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_value_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* xlo_add_namevalue ) (struct ocfs2_xa_loc*,int) ;} ;

/* Variables and functions */
 scalar_t__ OCFS2_XATTR_INLINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ocfs2_xattr_info*) ; 
 char* FUNC5 (struct ocfs2_xa_loc*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_xa_loc*,int) ; 

__attribute__((used)) static void FUNC9(struct ocfs2_xa_loc *loc,
				   struct ocfs2_xattr_info *xi)
{
	int size = FUNC4(xi);
	int nameval_offset;
	char *nameval_buf;

	loc->xl_ops->xlo_add_namevalue(loc, size);
	loc->xl_entry->xe_value_size = FUNC0(xi->xi_value_len);
	loc->xl_entry->xe_name_len = xi->xi_name_len;
	FUNC7(loc->xl_entry, xi->xi_name_index);
	FUNC6(loc->xl_entry,
			      xi->xi_value_len <= OCFS2_XATTR_INLINE_SIZE);

	nameval_offset = FUNC1(loc->xl_entry->xe_name_offset);
	nameval_buf = FUNC5(loc, nameval_offset);
	FUNC3(nameval_buf, 0, size);
	FUNC2(nameval_buf, xi->xi_name, xi->xi_name_len);
}