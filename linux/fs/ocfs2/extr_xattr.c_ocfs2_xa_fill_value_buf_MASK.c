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
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_value_buf {struct ocfs2_xattr_value_root* vb_xv; } ;
struct ocfs2_xa_loc {TYPE_1__* xl_ops; TYPE_2__* xl_entry; } ;
struct TYPE_5__ {int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_name_offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* xlo_fill_value_buf ) (struct ocfs2_xa_loc*,struct ocfs2_xattr_value_buf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OCFS2_XATTR_ROOT_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct ocfs2_xa_loc*,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_xa_loc*,struct ocfs2_xattr_value_buf*) ; 

__attribute__((used)) static void FUNC7(struct ocfs2_xa_loc *loc,
				    struct ocfs2_xattr_value_buf *vb)
{
	int nameval_offset = FUNC2(loc->xl_entry->xe_name_offset);
	int name_size = FUNC1(loc->xl_entry->xe_name_len);

	/* Value bufs are for value trees */
	FUNC0(FUNC5(loc->xl_entry));
	FUNC0(FUNC3(loc->xl_entry) !=
	       (name_size + OCFS2_XATTR_ROOT_SIZE));

	loc->xl_ops->xlo_fill_value_buf(loc, vb);
	vb->vb_xv =
		(struct ocfs2_xattr_value_root *)FUNC4(loc,
							nameval_offset +
							name_size);
}