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
struct iomap_page {int /*<<< orphan*/  uptodate; int /*<<< orphan*/  write_count; int /*<<< orphan*/  read_count; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int GFP_NOFS ; 
 int PAGE_SIZE ; 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct inode*) ; 
 struct iomap_page* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,unsigned long) ; 
 struct iomap_page* FUNC7 (struct page*) ; 

__attribute__((used)) static struct iomap_page *
FUNC8(struct inode *inode, struct page *page)
{
	struct iomap_page *iop = FUNC7(page);

	if (iop || FUNC4(inode) == PAGE_SIZE)
		return iop;

	iop = FUNC5(sizeof(*iop), GFP_NOFS | __GFP_NOFAIL);
	FUNC1(&iop->read_count, 0);
	FUNC1(&iop->write_count, 0);
	FUNC2(iop->uptodate, PAGE_SIZE / SECTOR_SIZE);

	/*
	 * migrate_page_move_mapping() assumes that pages with private data have
	 * their count elevated by 1.
	 */
	FUNC3(page);
	FUNC6(page, (unsigned long)iop);
	FUNC0(page);
	return iop;
}