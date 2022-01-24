#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_inode_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_orphan; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_ADDRESS ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	if (!FUNC3(&(FUNC0(inode)->i_orphan))) {
		FUNC2(inode->i_sb, KERN_ERR,
			 "Inode %lu (%p): orphan list check failed!",
			 inode->i_ino, FUNC0(inode));
		FUNC4(KERN_INFO, "", DUMP_PREFIX_ADDRESS, 16, 4,
				FUNC0(inode), sizeof(struct ext4_inode_info),
				true);
		FUNC1();
	}
}