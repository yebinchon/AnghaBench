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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct dentry* FUNC3 (struct dentry*,struct inode*,int) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC7(struct inode *inode, bool disconnected)
{
	struct dentry *tmp;
	struct dentry *res;

	if (!inode)
		return FUNC1(-ESTALE);
	if (FUNC2(inode))
		return FUNC0(inode);

	res = FUNC5(inode);
	if (res)
		goto out_iput;

	tmp = FUNC4(inode->i_sb);
	if (!tmp) {
		res = FUNC1(-ENOMEM);
		goto out_iput;
	}

	return FUNC3(tmp, inode, disconnected);

out_iput:
	FUNC6(inode);
	return res;
}