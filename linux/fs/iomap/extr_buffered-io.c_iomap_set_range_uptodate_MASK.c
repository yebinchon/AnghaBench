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
struct iomap_page {int /*<<< orphan*/  uptodate; } ;
struct inode {unsigned int i_blkbits; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 struct iomap_page* FUNC5 (struct page*) ; 

__attribute__((used)) static void
FUNC6(struct page *page, unsigned off, unsigned len)
{
	struct iomap_page *iop = FUNC5(page);
	struct inode *inode = page->mapping->host;
	unsigned first = off >> inode->i_blkbits;
	unsigned last = (off + len - 1) >> inode->i_blkbits;
	unsigned int i;
	bool uptodate = true;

	if (iop) {
		for (i = 0; i < PAGE_SIZE / FUNC2(inode); i++) {
			if (i >= first && i <= last)
				FUNC3(i, iop->uptodate);
			else if (!FUNC4(i, iop->uptodate))
				uptodate = false;
		}
	}

	if (uptodate && !FUNC0(page))
		FUNC1(page);
}