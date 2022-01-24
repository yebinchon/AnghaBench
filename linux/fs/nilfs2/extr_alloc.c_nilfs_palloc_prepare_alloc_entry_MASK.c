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
struct nilfs_palloc_req {unsigned long pr_entry_nr; struct buffer_head* pr_bitmap_bh; struct buffer_head* pr_desc_bh; } ;
struct nilfs_palloc_group_desc {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*,unsigned long) ; 
 struct nilfs_palloc_group_desc* FUNC5 (struct inode*,unsigned long,struct buffer_head*,void*) ; 
 unsigned long FUNC6 (struct inode*) ; 
 int FUNC7 (unsigned char*,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,unsigned long,int,struct buffer_head**) ; 
 int FUNC9 (struct inode*,unsigned long,int,struct buffer_head**) ; 
 int FUNC10 (struct inode*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_palloc_group_desc*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (struct nilfs_palloc_group_desc*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC13 (struct inode*) ; 
 unsigned long FUNC14 (struct inode*,unsigned long,unsigned long) ; 

int FUNC15(struct inode *inode,
				     struct nilfs_palloc_req *req)
{
	struct buffer_head *desc_bh, *bitmap_bh;
	struct nilfs_palloc_group_desc *desc;
	unsigned char *bitmap;
	void *desc_kaddr, *bitmap_kaddr;
	unsigned long group, maxgroup, ngroups;
	unsigned long group_offset, maxgroup_offset;
	unsigned long n, entries_per_group;
	unsigned long i, j;
	spinlock_t *lock;
	int pos, ret;

	ngroups = FUNC13(inode);
	maxgroup = ngroups - 1;
	group = FUNC10(inode, req->pr_entry_nr, &group_offset);
	entries_per_group = FUNC6(inode);

	for (i = 0; i < ngroups; i += n) {
		if (group >= ngroups) {
			/* wrap around */
			group = 0;
			maxgroup = FUNC10(inode, req->pr_entry_nr,
						      &maxgroup_offset) - 1;
		}
		ret = FUNC9(inode, group, 1, &desc_bh);
		if (ret < 0)
			return ret;
		desc_kaddr = FUNC2(desc_bh->b_page);
		desc = FUNC5(
			inode, group, desc_bh, desc_kaddr);
		n = FUNC14(inode, group,
							   maxgroup);
		for (j = 0; j < n; j++, desc++, group++) {
			lock = FUNC4(inode, group);
			if (FUNC12(desc, lock) > 0) {
				ret = FUNC8(
					inode, group, 1, &bitmap_bh);
				if (ret < 0)
					goto out_desc;
				bitmap_kaddr = FUNC2(bitmap_bh->b_page);
				bitmap = bitmap_kaddr + FUNC0(bitmap_bh);
				pos = FUNC7(
					bitmap, group_offset,
					entries_per_group, lock);
				if (pos >= 0) {
					/* found a free entry */
					FUNC11(
						desc, lock, -1);
					req->pr_entry_nr =
						entries_per_group * group + pos;
					FUNC3(desc_bh->b_page);
					FUNC3(bitmap_bh->b_page);

					req->pr_desc_bh = desc_bh;
					req->pr_bitmap_bh = bitmap_bh;
					return 0;
				}
				FUNC3(bitmap_bh->b_page);
				FUNC1(bitmap_bh);
			}

			group_offset = 0;
		}

		FUNC3(desc_bh->b_page);
		FUNC1(desc_bh);
	}

	/* no entries left */
	return -ENOSPC;

 out_desc:
	FUNC3(desc_bh->b_page);
	FUNC1(desc_bh);
	return ret;
}