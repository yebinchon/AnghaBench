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
struct super_block {int dummy; } ;
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_len; } ;
struct ocfs2_xattr_bucket {struct buffer_head** bu_bhs; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct ocfs2_xattr_bucket*,int) ; 
 struct ocfs2_xattr_header* FUNC2 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct super_block*,struct ocfs2_xattr_header*,int,int*,int*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
					   struct ocfs2_xattr_bucket *bucket,
					   int offset,
					   struct ocfs2_xattr_value_root **xv,
					   struct buffer_head **bh)
{
	int ret, block_off, name_offset;
	struct ocfs2_xattr_header *xh = FUNC2(bucket);
	struct ocfs2_xattr_entry *xe = &xh->xh_entries[offset];
	void *base;

	ret = FUNC4(sb,
						FUNC2(bucket),
						offset,
						&block_off,
						&name_offset);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	base = FUNC1(bucket, block_off);

	*xv = (struct ocfs2_xattr_value_root *)(base + name_offset +
			 FUNC0(xe->xe_name_len));

	if (bh)
		*bh = bucket->bu_bhs[block_off];
out:
	return ret;
}