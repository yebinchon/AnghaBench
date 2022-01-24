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
struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int S_IFLNK ; 
 int FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct inode*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,char const*,int) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(struct inode * dir, struct dentry *dentry,
	  const char * symname)
{
	int err = -ENAMETOOLONG;
	int i = FUNC6(symname)+1;
	struct inode * inode;

	if (i > dir->i_sb->s_blocksize)
		goto out;

	inode = FUNC3(dir, S_IFLNK | 0777, &err);
	if (!inode)
		goto out;

	FUNC4(inode, 0);
	err = FUNC5(inode, symname, i);
	if (err)
		goto out_fail;

	err = FUNC0(dentry, inode);
out:
	return err;

out_fail:
	FUNC1(inode);
	FUNC2(inode);
	goto out;
}