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
struct inode {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct page*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct inode *inode, struct page *page)
{
	struct page *ipage;

	ipage = FUNC6(FUNC0(inode), inode->i_ino);
	if (FUNC1(ipage)) {
		FUNC9(page);
		return FUNC2(ipage);
	}

	if (!FUNC7(inode)) {
		FUNC8(ipage, 1);
		return -EAGAIN;
	}

	if (page->index)
		FUNC10(page, 0, PAGE_SIZE);
	else
		FUNC5(page, ipage);

	if (!FUNC3(page))
		FUNC4(page);
	FUNC8(ipage, 1);
	FUNC9(page);
	return 0;
}