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
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int FUNC0 (struct page*,int,unsigned int,int /*<<< orphan*/ *) ; 
 struct page* FUNC1 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

int FUNC5(struct address_space *mapping, loff_t pos, unsigned len,
		unsigned flags, struct page **pagep, get_block_t *get_block)
{
	pgoff_t index = pos >> PAGE_SHIFT;
	struct page *page;
	int status;

	page = FUNC1(mapping, index, flags);
	if (!page)
		return -ENOMEM;

	status = FUNC0(page, pos, len, get_block);
	if (FUNC3(status)) {
		FUNC4(page);
		FUNC2(page);
		page = NULL;
	}

	*pagep = page;
	return status;
}