#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_tree_list {int /*<<< orphan*/  result; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_len; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {struct ocfs2_xattr_entry* xh_entries; int /*<<< orphan*/  xh_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ocfs2_xattr_bucket*,int) ; 
 TYPE_1__* FUNC1 (struct ocfs2_xattr_bucket*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int,int*,int*) ; 
 int FUNC4 (struct ocfs2_xattr_entry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
				   struct ocfs2_xattr_bucket *bucket,
				   void *para)
{
	int ret = 0, type;
	struct ocfs2_xattr_tree_list *xl = (struct ocfs2_xattr_tree_list *)para;
	int i, block_off, new_offset;
	const char *name;

	for (i = 0 ; i < FUNC2(FUNC1(bucket)->xh_count); i++) {
		struct ocfs2_xattr_entry *entry = &FUNC1(bucket)->xh_entries[i];
		type = FUNC4(entry);

		ret = FUNC3(inode->i_sb,
							FUNC1(bucket),
							i,
							&block_off,
							&new_offset);
		if (ret)
			break;

		name = (const char *)FUNC0(bucket, block_off) +
			new_offset;
		ret = FUNC5(inode->i_sb,
					     xl->buffer,
					     xl->buffer_size,
					     &xl->result,
					     type, name,
					     entry->xe_name_len);
		if (ret)
			break;
	}

	return ret;
}