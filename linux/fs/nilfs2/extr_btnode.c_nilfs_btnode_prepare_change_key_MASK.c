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
struct page {scalar_t__ index; } ;
struct nilfs_btnode_chkey_ctxt {scalar_t__ oldkey; scalar_t__ newkey; struct buffer_head* newbh; struct buffer_head* bh; } ;
struct inode {scalar_t__ i_blkbits; } ;
struct buffer_head {struct page* b_page; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct inode* FUNC1 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,char*,unsigned long long,unsigned long long) ; 
 scalar_t__ PAGE_SHIFT ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,struct page*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct address_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct buffer_head* FUNC6 (struct address_space*,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct address_space *btnc,
				    struct nilfs_btnode_chkey_ctxt *ctxt)
{
	struct buffer_head *obh, *nbh;
	struct inode *inode = FUNC1(btnc);
	__u64 oldkey = ctxt->oldkey, newkey = ctxt->newkey;
	int err;

	if (oldkey == newkey)
		return 0;

	obh = ctxt->bh;
	ctxt->newbh = NULL;

	if (inode->i_blkbits == PAGE_SHIFT) {
		struct page *opage = obh->b_page;
		FUNC5(opage);
retry:
		/* BUG_ON(oldkey != obh->b_page->index); */
		if (FUNC7(oldkey != opage->index))
			FUNC2(opage,
				       "invalid oldkey %lld (newkey=%lld)",
				       (unsigned long long)oldkey,
				       (unsigned long long)newkey);

		FUNC9(&btnc->i_pages);
		err = FUNC3(&btnc->i_pages, newkey, opage, GFP_NOFS);
		FUNC10(&btnc->i_pages);
		/*
		 * Note: page->index will not change to newkey until
		 * nilfs_btnode_commit_change_key() will be called.
		 * To protect the page in intermediate state, the page lock
		 * is held.
		 */
		if (!err)
			return 0;
		else if (err != -EBUSY)
			goto failed_unlock;

		err = FUNC4(btnc, newkey, newkey);
		if (!err)
			goto retry;
		/* fallback to copy mode */
		FUNC8(opage);
	}

	nbh = FUNC6(btnc, newkey);
	if (!nbh)
		return -ENOMEM;

	FUNC0(nbh == obh);
	ctxt->newbh = nbh;
	return 0;

 failed_unlock:
	FUNC8(obh->b_page);
	return err;
}