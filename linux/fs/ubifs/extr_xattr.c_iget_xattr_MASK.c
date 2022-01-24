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
struct ubifs_info {int /*<<< orphan*/  vfs_sb; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_2__ {scalar_t__ xattr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,char*,...) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC7(struct ubifs_info *c, ino_t inum)
{
	struct inode *inode;

	inode = FUNC5(c->vfs_sb, inum);
	if (FUNC1(inode)) {
		FUNC4(c, "dead extended attribute entry, error %d",
			  (int)FUNC2(inode));
		return inode;
	}
	if (FUNC6(inode)->xattr)
		return inode;
	FUNC4(c, "corrupt extended attribute entry");
	FUNC3(inode);
	return FUNC0(-EINVAL);
}