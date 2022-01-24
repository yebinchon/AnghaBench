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
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_name_offset; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ocfs2_xattr_entry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,size_t,size_t*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
				    struct ocfs2_xattr_header *header,
				    char *buffer, size_t buffer_size)
{
	size_t result = 0;
	int i, type, ret;
	const char *name;

	for (i = 0 ; i < FUNC0(header->xh_count); i++) {
		struct ocfs2_xattr_entry *entry = &header->xh_entries[i];
		type = FUNC1(entry);
		name = (const char *)header +
			FUNC0(entry->xe_name_offset);

		ret = FUNC2(inode->i_sb,
					     buffer, buffer_size,
					     &result, type, name,
					     entry->xe_name_len);
		if (ret)
			return ret;
	}

	return result;
}