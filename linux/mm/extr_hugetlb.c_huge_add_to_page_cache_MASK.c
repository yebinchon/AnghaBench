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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_blocks; } ;
struct hstate {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hstate*) ; 
 struct hstate* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct page *page, struct address_space *mapping,
			   pgoff_t idx)
{
	struct inode *inode = mapping->host;
	struct hstate *h = FUNC3(inode);
	int err = FUNC1(page, mapping, idx, GFP_KERNEL);

	if (err)
		return err;
	FUNC0(page);

	/*
	 * set page dirty so that it will not be removed from cache/file
	 * by non-hugetlbfs specific code paths.
	 */
	FUNC4(page);

	FUNC5(&inode->i_lock);
	inode->i_blocks += FUNC2(h);
	FUNC6(&inode->i_lock);
	return 0;
}