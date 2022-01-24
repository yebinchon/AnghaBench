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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_entry {size_t xe_name_len; int /*<<< orphan*/  xe_name_hash; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 char* FUNC0 (struct ocfs2_xattr_bucket*,int) ; 
 struct ocfs2_xattr_header* FUNC1 (struct ocfs2_xattr_bucket*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_xattr_header*,int,int*,int*) ; 
 int FUNC7 (struct ocfs2_xattr_entry*) ; 
 size_t FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
				   struct ocfs2_xattr_bucket *bucket,
				   int name_index,
				   const char *name,
				   u32 name_hash,
				   u16 *xe_index,
				   int *found)
{
	int i, ret = 0, cmp = 1, block_off, new_offset;
	struct ocfs2_xattr_header *xh = FUNC1(bucket);
	size_t name_len = FUNC8(name);
	struct ocfs2_xattr_entry *xe = NULL;
	char *xe_name;

	/*
	 * We don't use binary search in the bucket because there
	 * may be multiple entries with the same name hash.
	 */
	for (i = 0; i < FUNC2(xh->xh_count); i++) {
		xe = &xh->xh_entries[i];

		if (name_hash > FUNC3(xe->xe_name_hash))
			continue;
		else if (name_hash < FUNC3(xe->xe_name_hash))
			break;

		cmp = name_index - FUNC7(xe);
		if (!cmp)
			cmp = name_len - xe->xe_name_len;
		if (cmp)
			continue;

		ret = FUNC6(inode->i_sb,
							xh,
							i,
							&block_off,
							&new_offset);
		if (ret) {
			FUNC5(ret);
			break;
		}


		xe_name = FUNC0(bucket, block_off) + new_offset;
		if (!FUNC4(name, xe_name, name_len)) {
			*xe_index = i;
			*found = 1;
			ret = 0;
			break;
		}
	}

	return ret;
}