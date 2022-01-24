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
struct page {int /*<<< orphan*/  _refcount; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_inode_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct inode *inode)
{
	struct ext4_inode_info *ei = FUNC0(inode);
	struct page *page;
	int error;

	if (FUNC1(!FUNC6(&ei->i_mmap_sem)))
		return -EINVAL;

	do {
		page = FUNC4(inode->i_mapping);
		if (!page)
			return 0;

		error = FUNC2(&page->_refcount,
				FUNC3(&page->_refcount) == 1,
				TASK_INTERRUPTIBLE, 0, 0,
				FUNC5(ei));
	} while (error == 0);

	return error;
}