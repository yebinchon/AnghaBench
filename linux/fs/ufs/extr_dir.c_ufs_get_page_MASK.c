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

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct page* FUNC5 (struct address_space*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct page *FUNC9(struct inode *dir, unsigned long n)
{
	struct address_space *mapping = dir->i_mapping;
	struct page *page = FUNC5(mapping, n, NULL);
	if (!FUNC1(page)) {
		FUNC4(page);
		if (FUNC8(!FUNC2(page))) {
			if (FUNC3(page) || !FUNC6(page))
				goto fail;
		}
	}
	return page;

fail:
	FUNC7(page);
	return FUNC0(-EIO);
}