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
typedef  int umode_t ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct inode *inode;
	int res;

	inode = FUNC4(dir, &dentry->d_name, S_IFDIR | mode);
	if (!inode)
		return -ENOMEM;

	res = FUNC2(inode->i_ino, dir, &dentry->d_name, inode);
	if (res) {
		FUNC0(inode);
		FUNC3(inode);
		FUNC5(inode);
		return res;
	}
	FUNC1(dentry, inode);
	FUNC6(inode);
	return 0;
}