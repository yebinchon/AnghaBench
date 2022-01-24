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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct ocfs2_write_ctxt {struct page* w_target_page; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int FUNC8 (struct page*,int /*<<< orphan*/ *,struct inode*,unsigned int,unsigned int,int) ; 
 int FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, u64 *p_blkno,
					struct ocfs2_write_ctxt *wc,
					struct page *page, u32 cpos,
					loff_t user_pos, unsigned user_len,
					int new)
{
	int ret;
	unsigned int map_from = 0, map_to = 0;
	unsigned int cluster_start, cluster_end;
	unsigned int user_data_from = 0, user_data_to = 0;

	FUNC7(FUNC1(inode->i_sb), cpos,
					&cluster_start, &cluster_end);

	/* treat the write as new if the a hole/lseek spanned across
	 * the page boundary.
	 */
	new = new | ((FUNC4(inode) <= FUNC9(page)) &&
			(FUNC9(page) <= user_pos));

	if (page == wc->w_target_page) {
		map_from = user_pos & (PAGE_SIZE - 1);
		map_to = map_from + user_len;

		if (new)
			ret = FUNC8(page, p_blkno, inode,
						    cluster_start, cluster_end,
						    new);
		else
			ret = FUNC8(page, p_blkno, inode,
						    map_from, map_to, new);
		if (ret) {
			FUNC5(ret);
			goto out;
		}

		user_data_from = map_from;
		user_data_to = map_to;
		if (new) {
			map_from = cluster_start;
			map_to = cluster_end;
		}
	} else {
		/*
		 * If we haven't allocated the new page yet, we
		 * shouldn't be writing it out without copying user
		 * data. This is likely a math error from the caller.
		 */
		FUNC0(!new);

		map_from = cluster_start;
		map_to = cluster_end;

		ret = FUNC8(page, p_blkno, inode,
					    cluster_start, cluster_end, new);
		if (ret) {
			FUNC5(ret);
			goto out;
		}
	}

	/*
	 * Parts of newly allocated pages need to be zero'd.
	 *
	 * Above, we have also rewritten 'to' and 'from' - as far as
	 * the rest of the function is concerned, the entire cluster
	 * range inside of a page needs to be written.
	 *
	 * We can skip this if the page is up to date - it's already
	 * been zero'd from being read in as a hole.
	 */
	if (new && !FUNC2(page))
		FUNC6(page, FUNC1(inode->i_sb),
					 cpos, user_data_from, user_data_to);

	FUNC3(page);

out:
	return ret;
}