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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 scalar_t__ NILFS_NAME_LEN ; 
 struct dentry* FUNC2 (struct inode*,struct dentry*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (struct inode*,TYPE_1__*) ; 

__attribute__((used)) static struct dentry *
FUNC5(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
	struct inode *inode;
	ino_t ino;

	if (dentry->d_name.len > NILFS_NAME_LEN)
		return FUNC0(-ENAMETOOLONG);

	ino = FUNC4(dir, &dentry->d_name);
	inode = ino ? FUNC3(dir->i_sb, FUNC1(dir)->i_root, ino) : NULL;
	return FUNC2(inode, dentry);
}