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
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct inode*,struct dentry*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC5(struct dentry *workdir)
{
	int err;
	struct dentry *whiteout;
	struct inode *wdir = workdir->d_inode;

	whiteout = FUNC4(workdir);
	if (FUNC1(whiteout))
		return whiteout;

	err = FUNC3(wdir, whiteout);
	if (err) {
		FUNC2(whiteout);
		whiteout = FUNC0(err);
	}

	return whiteout;
}