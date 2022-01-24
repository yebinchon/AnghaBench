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
struct inode {int dummy; } ;
struct TYPE_3__ {int num_pages; } ;
struct TYPE_4__ {int /*<<< orphan*/  ff; TYPE_1__ ap; } ;
struct fuse_writepage_args {int /*<<< orphan*/  queue_entry; TYPE_2__ ia; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_writes; } ;
struct fuse_fill_wb_data {int /*<<< orphan*/ * orig_pages; int /*<<< orphan*/  ff; struct inode* inode; struct fuse_writepage_args* wpa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct fuse_inode* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct fuse_fill_wb_data *data)
{
	struct fuse_writepage_args *wpa = data->wpa;
	struct inode *inode = data->inode;
	struct fuse_inode *fi = FUNC3(inode);
	int num_pages = wpa->ia.ap.num_pages;
	int i;

	wpa->ia.ff = FUNC1(data->ff);
	FUNC5(&fi->lock);
	FUNC4(&wpa->queue_entry, &fi->queued_writes);
	FUNC2(inode);
	FUNC6(&fi->lock);

	for (i = 0; i < num_pages; i++)
		FUNC0(data->orig_pages[i]);
}