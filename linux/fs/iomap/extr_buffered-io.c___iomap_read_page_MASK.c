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
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct address_space*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *
FUNC5(struct inode *inode, loff_t offset)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;

	page = FUNC4(mapping, offset >> PAGE_SHIFT, NULL);
	if (FUNC1(page))
		return page;
	if (!FUNC2(page)) {
		FUNC3(page);
		return FUNC0(-EIO);
	}
	return page;
}