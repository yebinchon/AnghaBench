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
struct inode {int i_state; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {scalar_t__ nrpages; struct inode* host; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int I_DIRTY_ALL ; 
 int I_DIRTY_PAGES ; 
 int I_DIRTY_SYNC ; 
 int I_DIRTY_TIME ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*) ; 
 int FUNC3 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct inode*,int) ; 

__attribute__((used)) static int FUNC7(struct file *file, loff_t start, loff_t end,
		      int datasync)
{
	struct address_space *mapping = file->f_mapping;
	struct inode *inode = mapping->host;
	int sync_state = inode->i_state & I_DIRTY_ALL;
	struct gfs2_inode *ip = FUNC0(inode);
	int ret = 0, ret1 = 0;

	if (mapping->nrpages) {
		ret1 = FUNC3(mapping, start, end);
		if (ret1 == -EIO)
			return ret1;
	}

	if (!FUNC5(ip))
		sync_state &= ~I_DIRTY_PAGES;
	if (datasync)
		sync_state &= ~(I_DIRTY_SYNC | I_DIRTY_TIME);

	if (sync_state) {
		ret = FUNC6(inode, 1);
		if (ret)
			return ret;
		if (FUNC5(ip))
			ret = FUNC2(file);
		if (ret)
			return ret;
		FUNC4(ip->i_gl, 1);
	}

	if (mapping->nrpages)
		ret = FUNC1(file, start, end);

	return ret ? ret : ret1;
}