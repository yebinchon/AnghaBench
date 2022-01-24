#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct metapage {int index; scalar_t__ lsn; int /*<<< orphan*/  flag; } ;
struct inode {int i_blkbits; int /*<<< orphan*/  i_sb; } ;
struct address_space {int dummy; } ;
typedef  int sector_t ;
typedef  int s64 ;
struct TYPE_4__ {TYPE_1__* direct_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  META_dirty ; 
 int /*<<< orphan*/  META_discard ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ PSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (struct address_space*,int) ; 
 struct metapage* FUNC3 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

void FUNC8(struct inode *ip, s64 addr, int len)
{
	sector_t lblock;
	int l2BlocksPerPage = PAGE_SHIFT - ip->i_blkbits;
	int BlocksPerPage = 1 << l2BlocksPerPage;
	/* All callers are interested in block device's mapping */
	struct address_space *mapping =
		FUNC0(ip->i_sb)->direct_inode->i_mapping;
	struct metapage *mp;
	struct page *page;
	unsigned int offset;

	/*
	 * Mark metapages to discard.  They will eventually be
	 * released, but should not be written.
	 */
	for (lblock = addr & ~(BlocksPerPage - 1); lblock < addr + len;
	     lblock += BlocksPerPage) {
		page = FUNC2(mapping, lblock >> l2BlocksPerPage);
		if (!page)
			continue;
		for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
			mp = FUNC3(page, offset);
			if (!mp)
				continue;
			if (mp->index < addr)
				continue;
			if (mp->index >= addr + len)
				break;

			FUNC1(META_dirty, &mp->flag);
			FUNC6(META_discard, &mp->flag);
			if (mp->lsn)
				FUNC5(mp);
		}
		FUNC7(page);
		FUNC4(page);
	}
}