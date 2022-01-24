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
struct qstr {int dummy; } ;
struct nilfs_root {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {struct nilfs_root* i_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct qstr FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,struct nilfs_root*,unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ,struct qstr*) ; 

__attribute__((used)) static struct dentry *FUNC9(struct dentry *child)
{
	unsigned long ino;
	struct inode *inode;
	struct qstr dotdot = FUNC4("..", 2);
	struct nilfs_root *root;

	ino = FUNC8(FUNC5(child), &dotdot);
	if (!ino)
		return FUNC1(-ENOENT);

	root = FUNC3(FUNC5(child))->i_root;

	inode = FUNC7(child->d_sb, root, ino);
	if (FUNC2(inode))
		return FUNC0(inode);

	return FUNC6(inode);
}