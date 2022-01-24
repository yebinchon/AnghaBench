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
struct inode {int dummy; } ;
typedef  enum inode_type { ____Placeholder_inode_type } inode_type ;
struct TYPE_2__ {int /*<<< orphan*/  dirty_list; } ;

/* Variables and functions */
 int DIR_INODE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FI_DIRTY_DIR ; 
 int FI_DIRTY_FILE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, enum inode_type type)
{
	int flag = (type == DIR_INODE) ? FI_DIRTY_DIR : FI_DIRTY_FILE;

	if (FUNC3(inode) || !FUNC4(inode, flag))
		return;

	FUNC5(&FUNC0(inode)->dirty_list);
	FUNC2(inode, flag);
	FUNC6(FUNC1(inode), type);
}