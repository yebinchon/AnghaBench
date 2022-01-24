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
struct page {int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 int EAGAIN ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct inode *inode, struct page *page)
{
	int ret = 0;

	FUNC3(&FUNC0(inode)->xattr_sem);
	if (!FUNC4(inode)) {
		FUNC7(&FUNC0(inode)->xattr_sem);
		return -EAGAIN;
	}

	/*
	 * Current inline data can only exist in the 1st page,
	 * So for all the other pages, just set them uptodate.
	 */
	if (!page->index)
		ret = FUNC5(inode, page);
	else if (!FUNC1(page)) {
		FUNC8(page, 0, PAGE_SIZE);
		FUNC2(page);
	}

	FUNC7(&FUNC0(inode)->xattr_sem);

	FUNC6(page);
	return ret >= 0 ? 0 : ret;
}