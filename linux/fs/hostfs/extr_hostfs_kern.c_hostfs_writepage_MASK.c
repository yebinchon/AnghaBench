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
struct writeback_control {int dummy; } ;
struct page {int index; struct address_space* mapping; } ;
struct inode {int i_size; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC3 (struct page*) ; 
 char* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,char*,int) ; 

__attribute__((used)) static int FUNC9(struct page *page, struct writeback_control *wbc)
{
	struct address_space *mapping = page->mapping;
	struct inode *inode = mapping->host;
	char *buffer;
	loff_t base = FUNC6(page);
	int count = PAGE_SIZE;
	int end_index = inode->i_size >> PAGE_SHIFT;
	int err;

	if (page->index >= end_index)
		count = inode->i_size & (PAGE_SIZE-1);

	buffer = FUNC4(page);

	err = FUNC8(FUNC2(inode)->fd, &base, buffer, count);
	if (err != count) {
		FUNC1(page);
		goto out;
	}

	if (base > inode->i_size)
		inode->i_size = base;

	if (FUNC3(page))
		FUNC0(page);
	err = 0;

 out:
	FUNC5(page);

	FUNC7(page);
	return err;
}