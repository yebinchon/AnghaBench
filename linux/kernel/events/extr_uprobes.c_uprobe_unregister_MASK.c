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
struct uprobe_consumer {int dummy; } ;
struct uprobe {int /*<<< orphan*/  register_rwsem; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct uprobe*,struct uprobe_consumer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct uprobe* FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uprobe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inode *inode, loff_t offset, struct uprobe_consumer *uc)
{
	struct uprobe *uprobe;

	uprobe = FUNC3(inode, offset);
	if (FUNC0(!uprobe))
		return;

	FUNC2(&uprobe->register_rwsem);
	FUNC1(uprobe, uc);
	FUNC5(&uprobe->register_rwsem);
	FUNC4(uprobe);
}