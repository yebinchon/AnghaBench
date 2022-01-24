#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int t_refcount; int /*<<< orphan*/  t_trans_id; } ;
struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_7__ {struct reiserfs_transaction_handle* journal_info; } ;
struct TYPE_6__ {int s_blocksize; } ;

/* Variables and functions */
 unsigned int AOP_FLAG_CONT_EXPAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct page*,int,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  reiserfs_get_block ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int FUNC12(struct file *file,
				struct address_space *mapping,
				loff_t pos, unsigned len, unsigned flags,
				struct page **pagep, void **fsdata)
{
	struct inode *inode;
	struct page *page;
	pgoff_t index;
	int ret;
	int old_ref = 0;

 	inode = mapping->host;
	*fsdata = NULL;
 	if (flags & AOP_FLAG_CONT_EXPAND &&
 	    (pos & (inode->i_sb->s_blocksize - 1)) == 0) {
 		pos ++;
		*fsdata = (void *)(unsigned long)flags;
	}

	index = pos >> PAGE_SHIFT;
	page = FUNC3(mapping, index, flags);
	if (!page)
		return -ENOMEM;
	*pagep = page;

	FUNC8(inode->i_sb);
	FUNC2(page);
	if (FUNC6(inode->i_sb)) {
		struct reiserfs_transaction_handle *th;
		th = (struct reiserfs_transaction_handle *)current->
		    journal_info;
		FUNC0(!th->t_refcount);
		FUNC0(!th->t_trans_id);
		old_ref = th->t_refcount;
		th->t_refcount++;
	}
	ret = FUNC1(page, pos, len, reiserfs_get_block);
	if (ret && FUNC6(inode->i_sb)) {
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
				FUNC9(inode->i_sb);
				err = FUNC5(th);
				FUNC10(inode->i_sb);
				if (err)
					ret = err;
			}
		}
	}
	if (ret) {
		FUNC11(page);
		FUNC4(page);
		/* Truncate allocated blocks */
		FUNC7(inode);
	}
	return ret;
}