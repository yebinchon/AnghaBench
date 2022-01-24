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
struct inode {int dummy; } ;
struct fuse_args_pages {int num_pages; int /*<<< orphan*/ * pages; } ;
struct TYPE_2__ {struct fuse_args_pages ap; } ;
struct fuse_writepage_args {int /*<<< orphan*/  writepages_entry; struct inode* inode; TYPE_1__ ia; } ;
struct fuse_inode {int /*<<< orphan*/  page_waitq; } ;
struct fuse_conn {int dummy; } ;
struct backing_dev_info {int /*<<< orphan*/  wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_WRITEBACK_TEMP ; 
 int /*<<< orphan*/  WB_WRITEBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 struct backing_dev_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct fuse_conn *fc,
				  struct fuse_writepage_args *wpa)
{
	struct fuse_args_pages *ap = &wpa->ia.ap;
	struct inode *inode = wpa->inode;
	struct fuse_inode *fi = FUNC2(inode);
	struct backing_dev_info *bdi = FUNC3(inode);
	int i;

	FUNC4(&wpa->writepages_entry);
	for (i = 0; i < ap->num_pages; i++) {
		FUNC1(&bdi->wb, WB_WRITEBACK);
		FUNC0(ap->pages[i], NR_WRITEBACK_TEMP);
		FUNC6(&bdi->wb);
	}
	FUNC5(&fi->page_waitq);
}