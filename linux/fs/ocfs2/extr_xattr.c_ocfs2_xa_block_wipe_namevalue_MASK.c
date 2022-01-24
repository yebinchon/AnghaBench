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
struct ocfs2_xattr_header {TYPE_1__* xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_offset; } ;
struct ocfs2_xa_loc {struct ocfs2_xattr_header* xl_header; struct ocfs2_xattr_entry* xl_entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  xe_name_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ocfs2_xattr_entry*) ; 
 int FUNC5 (struct ocfs2_xa_loc*) ; 

__attribute__((used)) static void FUNC6(struct ocfs2_xa_loc *loc)
{
	int i, offset;
	int namevalue_offset, first_namevalue_offset, namevalue_size;
	struct ocfs2_xattr_entry *entry = loc->xl_entry;
	struct ocfs2_xattr_header *xh = loc->xl_header;
	int count = FUNC1(xh->xh_count);

	namevalue_offset = FUNC1(entry->xe_name_offset);
	namevalue_size = FUNC4(entry);
	first_namevalue_offset = FUNC5(loc);

	/* Shift the name+value pairs */
	FUNC2((char *)xh + first_namevalue_offset + namevalue_size,
		(char *)xh + first_namevalue_offset,
		namevalue_offset - first_namevalue_offset);
	FUNC3((char *)xh + first_namevalue_offset, 0, namevalue_size);

	/* Now tell xh->xh_entries about it */
	for (i = 0; i < count; i++) {
		offset = FUNC1(xh->xh_entries[i].xe_name_offset);
		if (offset <= namevalue_offset)
			FUNC0(&xh->xh_entries[i].xe_name_offset,
				     namevalue_size);
	}

	/*
	 * Note that we don't update xh_free_start or xh_name_value_len
	 * because they're not used in block-stored xattrs.
	 */
}