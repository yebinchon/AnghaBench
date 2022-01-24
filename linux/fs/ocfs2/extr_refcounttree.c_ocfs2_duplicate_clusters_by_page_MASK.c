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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; struct super_block* i_sb; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int s_clustersize_bits; int s_clustersize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (struct address_space*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  ocfs2_clear_cow_buffer ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int) ; 
 int /*<<< orphan*/  ocfs2_get_block ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ *,unsigned int,unsigned int,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct page*) ; 

int FUNC18(handle_t *handle,
				     struct inode *inode,
				     u32 cpos, u32 old_cluster,
				     u32 new_cluster, u32 new_len)
{
	int ret = 0, partial;
	struct super_block *sb = inode->i_sb;
	u64 new_block = FUNC9(sb, new_cluster);
	struct page *page;
	pgoff_t page_index;
	unsigned int from, to;
	loff_t offset, end, map_end;
	struct address_space *mapping = inode->i_mapping;

	FUNC14(cpos, old_cluster,
					       new_cluster, new_len);

	offset = ((loff_t)cpos) << FUNC0(sb)->s_clustersize_bits;
	end = offset + (new_len << FUNC0(sb)->s_clustersize_bits);
	/*
	 * We only duplicate pages until we reach the page contains i_size - 1.
	 * So trim 'end' to i_size.
	 */
	if (end > FUNC5(inode))
		end = FUNC5(inode);

	while (offset < end) {
		page_index = offset >> PAGE_SHIFT;
		map_end = ((loff_t)page_index + 1) << PAGE_SHIFT;
		if (map_end > end)
			map_end = end;

		/* from, to is the offset within the page. */
		from = offset & (PAGE_SIZE - 1);
		to = PAGE_SIZE;
		if (map_end & (PAGE_SIZE - 1))
			to = map_end & (PAGE_SIZE - 1);

retry:
		page = FUNC4(mapping, page_index, GFP_NOFS);
		if (!page) {
			ret = -ENOMEM;
			FUNC8(ret);
			break;
		}

		/*
		 * In case PAGE_SIZE <= CLUSTER_SIZE, we do not expect a dirty
		 * page, so write it back.
		 */
		if (PAGE_SIZE <= FUNC0(sb)->s_clustersize) {
			if (FUNC1(page)) {
				/*
				 * write_on_page will unlock the page on return
				 */
				ret = FUNC17(page);
				goto retry;
			}
		}

		if (!FUNC2(page)) {
			ret = FUNC3(page, ocfs2_get_block);
			if (ret) {
				FUNC8(ret);
				goto unlock;
			}
			FUNC6(page);
		}

		if (FUNC12(page)) {
			ret = FUNC16(handle, FUNC11(page),
						from, to, &partial,
						ocfs2_clear_cow_buffer);
			if (ret) {
				FUNC8(ret);
				goto unlock;
			}
		}

		FUNC10(inode,
					 handle, from, to,
					 page, 0, &new_block);
		FUNC7(page);
unlock:
		FUNC15(page);
		FUNC13(page);
		page = NULL;
		offset = map_end;
		if (ret)
			break;
	}

	return ret;
}