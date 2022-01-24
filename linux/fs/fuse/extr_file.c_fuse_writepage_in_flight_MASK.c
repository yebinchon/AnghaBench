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
struct page {int index; } ;
struct fuse_args_pages {int num_pages; int /*<<< orphan*/ * pages; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
struct TYPE_6__ {struct fuse_args_pages ap; TYPE_2__ write; } ;
struct fuse_writepage_args {scalar_t__ inode; struct fuse_writepage_args* next; TYPE_3__ ia; int /*<<< orphan*/  writepages_entry; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  writepages; } ;
struct backing_dev_info {int /*<<< orphan*/  wb; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  NR_WRITEBACK_TEMP ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WB_WRITEBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fuse_writepage_args* FUNC3 (struct fuse_inode*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_writepage_args*) ; 
 struct fuse_inode* FUNC5 (scalar_t__) ; 
 struct backing_dev_info* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC13(struct fuse_writepage_args *new_wpa,
				     struct page *page)
{
	struct fuse_inode *fi = FUNC5(new_wpa->inode);
	struct fuse_writepage_args *tmp;
	struct fuse_writepage_args *old_wpa;
	struct fuse_args_pages *new_ap = &new_wpa->ia.ap;

	FUNC0(new_ap->num_pages != 0);

	FUNC9(&fi->lock);
	FUNC8(&new_wpa->writepages_entry);
	old_wpa = FUNC3(fi, page->index, page->index);
	if (!old_wpa) {
		FUNC7(&new_wpa->writepages_entry, &fi->writepages);
		FUNC10(&fi->lock);
		return false;
	}

	new_ap->num_pages = 1;
	for (tmp = old_wpa->next; tmp; tmp = tmp->next) {
		pgoff_t curr_index;

		FUNC0(tmp->inode != new_wpa->inode);
		curr_index = tmp->ia.write.in.offset >> PAGE_SHIFT;
		if (curr_index == page->index) {
			FUNC0(tmp->ia.ap.num_pages != 1);
			FUNC11(tmp->ia.ap.pages[0], new_ap->pages[0]);
			break;
		}
	}

	if (!tmp) {
		new_wpa->next = old_wpa->next;
		old_wpa->next = new_wpa;
	}

	FUNC10(&fi->lock);

	if (tmp) {
		struct backing_dev_info *bdi = FUNC6(new_wpa->inode);

		FUNC2(&bdi->wb, WB_WRITEBACK);
		FUNC1(new_ap->pages[0], NR_WRITEBACK_TEMP);
		FUNC12(&bdi->wb);
		FUNC4(new_wpa);
	}

	return true;
}