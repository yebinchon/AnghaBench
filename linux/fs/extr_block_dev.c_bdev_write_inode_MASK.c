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
struct inode {int i_state; int /*<<< orphan*/  i_lock; } ;
struct block_device {struct inode* bd_inode; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int I_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,int) ; 

__attribute__((used)) static void FUNC5(struct block_device *bdev)
{
	struct inode *inode = bdev->bd_inode;
	int ret;

	FUNC2(&inode->i_lock);
	while (inode->i_state & I_DIRTY) {
		FUNC3(&inode->i_lock);
		ret = FUNC4(inode, true);
		if (ret) {
			char name[BDEVNAME_SIZE];
			FUNC1("VFS: Dirty inode writeback failed "
					    "for block device %s (err=%d).\n",
					    FUNC0(bdev, name), ret);
		}
		FUNC2(&inode->i_lock);
	}
	FUNC3(&inode->i_lock);
}