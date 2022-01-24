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
struct ubifs_inode {int ui_size; int /*<<< orphan*/  ui_mutex; } ;
struct TYPE_2__ {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_info {TYPE_1__ bi; } ;
struct ubifs_budget_req {int dirtied_page; int dirtied_ino; int /*<<< orphan*/  dirtied_ino_d; } ;
struct page {int dummy; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_ino; } ;
struct iattr {int ia_size; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int ENOSPC ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ UBIFS_BLOCKS_PER_PAGE_SHIFT ; 
 int UBIFS_BLOCK_SIZE ; 
 int /*<<< orphan*/  UBIFS_TRUN_NODE_SZ ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct iattr const*) ; 
 int FUNC6 (struct page*,int) ; 
 struct page* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_budget_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 struct ubifs_inode* FUNC16 (struct inode*) ; 
 int FUNC17 (struct ubifs_info*,struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 

__attribute__((used)) static int FUNC20(struct ubifs_info *c, struct inode *inode,
			 const struct iattr *attr)
{
	int err;
	struct ubifs_budget_req req;
	loff_t old_size = inode->i_size, new_size = attr->ia_size;
	int offset = new_size & (UBIFS_BLOCK_SIZE - 1), budgeted = 1;
	struct ubifs_inode *ui = FUNC16(inode);

	FUNC4("ino %lu, size %lld -> %lld", inode->i_ino, old_size, new_size);
	FUNC8(&req, 0, sizeof(struct ubifs_budget_req));

	/*
	 * If this is truncation to a smaller size, and we do not truncate on a
	 * block boundary, budget for changing one data block, because the last
	 * block will be re-written.
	 */
	if (new_size & (UBIFS_BLOCK_SIZE - 1))
		req.dirtied_page = 1;

	req.dirtied_ino = 1;
	/* A funny way to budget for truncation node */
	req.dirtied_ino_d = UBIFS_TRUN_NODE_SZ;
	err = FUNC15(c, &req);
	if (err) {
		/*
		 * Treat truncations to zero as deletion and always allow them,
		 * just like we do for '->unlink()'.
		 */
		if (new_size || err != -ENOSPC)
			return err;
		budgeted = 0;
	}

	FUNC13(inode, new_size);

	if (offset) {
		pgoff_t index = new_size >> PAGE_SHIFT;
		struct page *page;

		page = FUNC7(inode->i_mapping, index);
		if (page) {
			if (FUNC0(page)) {
				/*
				 * 'ubifs_jnl_truncate()' will try to truncate
				 * the last data node, but it contains
				 * out-of-date data because the page is dirty.
				 * Write the page now, so that
				 * 'ubifs_jnl_truncate()' will see an already
				 * truncated (and up to date) data node.
				 */
				FUNC14(c, FUNC1(page));

				FUNC2(page);
				if (UBIFS_BLOCKS_PER_PAGE_SHIFT)
					offset = new_size &
						 (PAGE_SIZE - 1);
				err = FUNC6(page, offset);
				FUNC11(page);
				if (err)
					goto out_budg;
				/*
				 * We could now tell 'ubifs_jnl_truncate()' not
				 * to read the last block.
				 */
			} else {
				/*
				 * We could 'kmap()' the page and pass the data
				 * to 'ubifs_jnl_truncate()' to save it from
				 * having to read it.
				 */
				FUNC19(page);
				FUNC11(page);
			}
		}
	}

	FUNC9(&ui->ui_mutex);
	ui->ui_size = inode->i_size;
	/* Truncation changes inode [mc]time */
	inode->i_mtime = inode->i_ctime = FUNC3(inode);
	/* Other attributes may be changed at the same time as well */
	FUNC5(inode, attr);
	err = FUNC17(c, inode, old_size, new_size);
	FUNC10(&ui->ui_mutex);

out_budg:
	if (budgeted)
		FUNC18(c, &req);
	else {
		c->bi.nospace = c->bi.nospace_rp = 0;
		FUNC12();
	}
	return err;
}