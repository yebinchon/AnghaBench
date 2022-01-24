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
struct iomap_page {int dummy; } ;
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct iomap_page*,int*,int,unsigned int*,unsigned int*) ; 
 struct iomap_page* FUNC3 (struct inode*,struct page*) ; 
 int FUNC4 (struct inode*,int,struct page*,unsigned int,unsigned int,unsigned int,unsigned int,struct iomap*) ; 
 unsigned int FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, loff_t pos, unsigned len,
		struct page *page, struct iomap *iomap)
{
	struct iomap_page *iop = FUNC3(inode, page);
	loff_t block_size = FUNC1(inode);
	loff_t block_start = pos & ~(block_size - 1);
	loff_t block_end = (pos + len + block_size - 1) & ~(block_size - 1);
	unsigned from = FUNC5(pos), to = from + len, poff, plen;
	int status = 0;

	if (FUNC0(page))
		return 0;

	do {
		FUNC2(inode, iop, &block_start,
				block_end - block_start, &poff, &plen);
		if (plen == 0)
			break;

		if ((from > poff && from < poff + plen) ||
		    (to > poff && to < poff + plen)) {
			status = FUNC4(inode, block_start, page,
					poff, plen, from, to, iomap);
			if (status)
				break;
		}

	} while ((block_start += plen) < block_end);

	return status;
}