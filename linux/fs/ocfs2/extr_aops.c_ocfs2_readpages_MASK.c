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
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_LOCK_NONBLOCK ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*) ; 
 struct page* FUNC3 (struct list_head*) ; 
 int FUNC4 (struct address_space*,struct list_head*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_get_block ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct file *filp, struct address_space *mapping,
			   struct list_head *pages, unsigned nr_pages)
{
	int ret, err = -EIO;
	struct inode *inode = mapping->host;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	loff_t start;
	struct page *last;

	/*
	 * Use the nonblocking flag for the dlm code to avoid page
	 * lock inversion, but don't bother with retrying.
	 */
	ret = FUNC5(inode, NULL, 0, OCFS2_LOCK_NONBLOCK);
	if (ret)
		return err;

	if (FUNC1(&oi->ip_alloc_sem) == 0) {
		FUNC6(inode, 0);
		return err;
	}

	/*
	 * Don't bother with inline-data. There isn't anything
	 * to read-ahead in that case anyway...
	 */
	if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		goto out_unlock;

	/*
	 * Check whether a remote node truncated this file - we just
	 * drop out in that case as it's not worth handling here.
	 */
	last = FUNC3(pages);
	start = (loff_t)last->index << PAGE_SHIFT;
	if (start >= FUNC2(inode))
		goto out_unlock;

	err = FUNC4(mapping, pages, nr_pages, ocfs2_get_block);

out_unlock:
	FUNC7(&oi->ip_alloc_sem);
	FUNC6(inode, 0);

	return err;
}