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
struct page {TYPE_1__* mapping; } ;
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int,int) ; 

__attribute__((used)) static int FUNC11(struct file *file, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned copied, struct page *page, void *fsdata)
{
	struct inode *inode = page->mapping->host;
	loff_t last_pos = pos + copied;

	/*
	 * No need to use i_size_read() here, the i_size
	 * cannot change under us because we hold the i_mutex.
	 */
	if (last_pos > inode->i_size)
		FUNC3(inode, last_pos);

	/* zero the stale part of the page if we did a short copy */
	if (!FUNC0(page)) {
		unsigned from = pos & (PAGE_SIZE - 1);
		if (copied < len) {
			FUNC9(page, from + copied, len - copied);
		}
		/* Set fully written pages uptodate. */
		if (pos == FUNC5(page) &&
		    (len == PAGE_SIZE || pos + len == inode->i_size)) {
			FUNC10(page, from + copied, PAGE_SIZE);
			FUNC1(page);
		}
	}

	FUNC7(page);
	FUNC8(page);
	FUNC6(page);

	FUNC4(FUNC2(file));
	return copied;
}