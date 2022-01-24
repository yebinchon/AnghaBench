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
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {struct inode* rsrc_inode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  INODE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inode *inode)
{
	FUNC3(INODE, "hfsplus_evict_inode: %lu\n", inode->i_ino);
	FUNC5(&inode->i_data);
	FUNC2(inode);
	if (FUNC1(inode)) {
		FUNC0(FUNC0(inode)->rsrc_inode)->rsrc_inode = NULL;
		FUNC4(FUNC0(inode)->rsrc_inode);
	}
}