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
struct inode {TYPE_1__* i_mapping; } ;
struct address_space_operations {int (* is_partially_uptodate ) (struct page*,unsigned int,unsigned int) ;} ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct address_space_operations* a_ops; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int FUNC0 (struct page*) ; 
 int SEEK_DATA ; 
 int SEEK_HOLE ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int FUNC6 (struct page*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static bool
FUNC9(struct inode *inode, struct page *page, loff_t *lastoff,
		int whence)
{
	const struct address_space_operations *ops = inode->i_mapping->a_ops;
	unsigned int bsize = FUNC2(inode), off;
	bool seek_data = whence == SEEK_DATA;
	loff_t poff = FUNC5(page);

	if (FUNC1(*lastoff >= poff + PAGE_SIZE))
		return false;

	if (*lastoff < poff) {
		/*
		 * Last offset smaller than the start of the page means we found
		 * a hole:
		 */
		if (whence == SEEK_HOLE)
			return true;
		*lastoff = poff;
	}

	/*
	 * Just check the page unless we can and should check block ranges:
	 */
	if (bsize == PAGE_SIZE || !ops->is_partially_uptodate)
		return FUNC0(page) == seek_data;

	FUNC3(page);
	if (FUNC7(page->mapping != inode->i_mapping))
		goto out_unlock_not_found;

	for (off = 0; off < PAGE_SIZE; off += bsize) {
		if (FUNC4(*lastoff) >= off + bsize)
			continue;
		if (ops->is_partially_uptodate(page, off, bsize) == seek_data) {
			FUNC8(page);
			return true;
		}
		*lastoff = poff + off + bsize;
	}

out_unlock_not_found:
	FUNC8(page);
	return false;
}