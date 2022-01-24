#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int t_refcount; int /*<<< orphan*/  t_trans_id; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {struct reiserfs_transaction_handle* journal_info; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  reiserfs_get_block ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct page *page, unsigned from, unsigned len)
{
	struct inode *inode = page->mapping->host;
	int ret;
	int old_ref = 0;
	int depth;

	depth = FUNC9(inode->i_sb);
	FUNC5(inode->i_sb);
	FUNC7(inode->i_sb, depth);

	FUNC2(page);
	if (FUNC4(inode->i_sb)) {
		struct reiserfs_transaction_handle *th;
		th = (struct reiserfs_transaction_handle *)current->
		    journal_info;
		FUNC0(!th->t_refcount);
		FUNC0(!th->t_trans_id);
		old_ref = th->t_refcount;
		th->t_refcount++;
	}

	ret = FUNC1(page, from, len, reiserfs_get_block);
	if (ret && FUNC4(inode->i_sb)) {
		struct reiserfs_transaction_handle *th = current->journal_info;
		/*
		 * this gets a little ugly.  If reiserfs_get_block returned an
		 * error and left a transacstion running, we've got to close
		 * it, and we've got to free handle if it was a persistent
		 * transaction.
		 *
		 * But, if we had nested into an existing transaction, we need
		 * to just drop the ref count on the handle.
		 *
		 * If old_ref == 0, the transaction is from reiserfs_get_block,
		 * and it was a persistent trans.  Otherwise, it was nested
		 * above.
		 */
		if (th->t_refcount > old_ref) {
			if (old_ref)
				th->t_refcount--;
			else {
				int err;
				FUNC6(inode->i_sb);
				err = FUNC3(th);
				FUNC8(inode->i_sb);
				if (err)
					ret = err;
			}
		}
	}
	return ret;

}