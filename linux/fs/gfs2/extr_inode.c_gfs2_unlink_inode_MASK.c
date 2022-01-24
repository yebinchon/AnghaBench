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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ctime; } ;
struct gfs2_inode {scalar_t__ i_entries; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct dentry const*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct gfs2_inode*,struct dentry const*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static int FUNC9(struct gfs2_inode *dip,
			     const struct dentry *dentry)
{
	struct inode *inode = FUNC4(dentry);
	struct gfs2_inode *ip = FUNC0(inode);
	int error;

	error = FUNC6(dip, dentry);
	if (error)
		return error;

	ip->i_entries = 0;
	inode->i_ctime = FUNC3(inode);
	if (FUNC1(inode->i_mode))
		FUNC2(inode);
	else
		FUNC5(inode);
	FUNC8(inode);
	if (inode->i_nlink == 0)
		FUNC7(inode);
	return 0;
}