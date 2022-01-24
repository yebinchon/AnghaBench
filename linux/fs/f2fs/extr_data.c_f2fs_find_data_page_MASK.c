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
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

struct page *FUNC8(struct inode *inode, pgoff_t index)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;

	page = FUNC5(mapping, index);
	if (page && FUNC2(page))
		return page;
	FUNC4(page, 0);

	page = FUNC3(inode, index, 0, false);
	if (FUNC1(page))
		return page;

	if (FUNC2(page))
		return page;

	FUNC7(page);
	if (FUNC6(!FUNC2(page))) {
		FUNC4(page, 0);
		return FUNC0(-EIO);
	}
	return page;
}