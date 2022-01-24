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
struct inode {int /*<<< orphan*/  i_size; struct address_space* i_mapping; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int __GFP_HIGHMEM ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  page_put_link ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct delayed_call*,int /*<<< orphan*/ ,struct page*) ; 

const char *FUNC11(struct dentry *dentry, struct inode *inode,
			  struct delayed_call *callback)
{
	char *kaddr;
	struct page *page;
	struct address_space *mapping = inode->i_mapping;

	if (!dentry) {
		page = FUNC4(mapping, 0);
		if (!page)
			return FUNC1(-ECHILD);
		if (!FUNC3(page)) {
			FUNC8(page);
			return FUNC1(-ECHILD);
		}
	} else {
		page = FUNC9(mapping, 0, NULL);
		if (FUNC2(page))
			return (char*)page;
	}
	FUNC10(callback, page_put_link, page);
	FUNC0(FUNC5(mapping) & __GFP_HIGHMEM);
	kaddr = FUNC7(page);
	FUNC6(kaddr, inode->i_size, PAGE_SIZE - 1);
	return kaddr;
}