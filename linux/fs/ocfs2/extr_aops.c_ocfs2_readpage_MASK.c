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
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; scalar_t__ ip_blkno; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int AOP_TRUNCATED_PAGE ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ocfs2_get_block ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	loff_t start = (loff_t)page->index << PAGE_SHIFT;
	int ret, unlock = 1;

	FUNC10((unsigned long long)oi->ip_blkno,
			     (page ? page->index : 0));

	ret = FUNC7(inode, NULL, 0, page);
	if (ret != 0) {
		if (ret == AOP_TRUNCATED_PAGE)
			unlock = 0;
		FUNC6(ret);
		goto out;
	}

	if (FUNC4(&oi->ip_alloc_sem) == 0) {
		/*
		 * Unlock the page and cycle ip_alloc_sem so that we don't
		 * busyloop waiting for ip_alloc_sem to unlock
		 */
		ret = AOP_TRUNCATED_PAGE;
		FUNC11(page);
		unlock = 0;
		FUNC3(&oi->ip_alloc_sem);
		FUNC12(&oi->ip_alloc_sem);
		goto out_inode_unlock;
	}

	/*
	 * i_size might have just been updated as we grabed the meta lock.  We
	 * might now be discovering a truncate that hit on another node.
	 * block_read_full_page->get_block freaks out if it is asked to read
	 * beyond the end of a file, so we check here.  Callers
	 * (generic_file_read, vm_ops->fault) are clever enough to check i_size
	 * and notice that the page they just read isn't needed.
	 *
	 * XXX sys_readahead() seems to get that wrong?
	 */
	if (start >= FUNC5(inode)) {
		FUNC13(page, 0, PAGE_SIZE);
		FUNC1(page);
		ret = 0;
		goto out_alloc;
	}

	if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		ret = FUNC9(inode, page);
	else
		ret = FUNC2(page, ocfs2_get_block);
	unlock = 0;

out_alloc:
	FUNC12(&oi->ip_alloc_sem);
out_inode_unlock:
	FUNC8(inode, 0);
out:
	if (unlock)
		FUNC11(page);
	return ret;
}