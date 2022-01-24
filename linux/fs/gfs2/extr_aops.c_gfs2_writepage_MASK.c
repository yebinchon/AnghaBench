#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct page {scalar_t__ index; TYPE_2__* mapping; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
struct TYPE_6__ {scalar_t__ journal_info; } ;
struct TYPE_5__ {TYPE_1__* a_ops; struct inode* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* invalidatepage ) (struct page*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 TYPE_3__* current ; 
 scalar_t__ FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_get_block_noalloc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct page*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC6 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	loff_t i_size = FUNC4(inode);
	pgoff_t end_index = i_size >> PAGE_SHIFT;
	unsigned offset;

	if (FUNC2(sdp, FUNC3(ip->i_gl)))
		goto out;
	if (current->journal_info)
		goto redirty;
	/* Is the page fully outside i_size? (truncate in progress) */
	offset = i_size & (PAGE_SIZE-1);
	if (page->index > end_index || (page->index == end_index && !offset)) {
		page->mapping->a_ops->invalidatepage(page, 0, PAGE_SIZE);
		goto out;
	}

	return FUNC5(page, gfs2_get_block_noalloc, wbc);

redirty:
	FUNC6(wbc, page);
out:
	FUNC8(page);
	return 0;
}