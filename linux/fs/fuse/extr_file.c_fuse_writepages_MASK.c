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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_fill_wb_data {int /*<<< orphan*/  orig_pages; int /*<<< orphan*/ * ff; TYPE_3__* wpa; struct inode* inode; } ;
struct fuse_conn {int /*<<< orphan*/  max_pages; } ;
struct address_space {struct inode* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_pages; } ;
struct TYPE_5__ {TYPE_1__ ap; } ;
struct TYPE_6__ {TYPE_2__ ia; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  fuse_writepages_fill ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_fill_wb_data*) ; 
 struct fuse_conn* FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct address_space*,struct writeback_control*,int /*<<< orphan*/ ,struct fuse_fill_wb_data*) ; 

__attribute__((used)) static int FUNC8(struct address_space *mapping,
			   struct writeback_control *wbc)
{
	struct inode *inode = mapping->host;
	struct fuse_conn *fc = FUNC3(inode);
	struct fuse_fill_wb_data data;
	int err;

	err = -EIO;
	if (FUNC4(inode))
		goto out;

	data.inode = inode;
	data.wpa = NULL;
	data.ff = NULL;

	err = -ENOMEM;
	data.orig_pages = FUNC5(fc->max_pages,
				  sizeof(struct page *),
				  GFP_NOFS);
	if (!data.orig_pages)
		goto out;

	err = FUNC7(mapping, wbc, fuse_writepages_fill, &data);
	if (data.wpa) {
		/* Ignore errors if we can write at least one page */
		FUNC0(!data.wpa->ia.ap.num_pages);
		FUNC2(&data);
		err = 0;
	}
	if (data.ff)
		FUNC1(data.ff, false, false);

	FUNC6(data.orig_pages);
out:
	return err;
}