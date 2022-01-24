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
struct uprobe_consumer {struct uprobe_consumer* next; } ;
struct uprobe {int /*<<< orphan*/  register_rwsem; struct uprobe_consumer* consumers; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct uprobe* FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uprobe*) ; 
 int FUNC4 (struct uprobe*,struct uprobe_consumer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct inode *inode, loff_t offset,
			struct uprobe_consumer *uc, bool add)
{
	struct uprobe *uprobe;
	struct uprobe_consumer *con;
	int ret = -ENOENT;

	uprobe = FUNC2(inode, offset);
	if (FUNC0(!uprobe))
		return ret;

	FUNC1(&uprobe->register_rwsem);
	for (con = uprobe->consumers; con && con != uc ; con = con->next)
		;
	if (con)
		ret = FUNC4(uprobe, add ? uc : NULL);
	FUNC5(&uprobe->register_rwsem);
	FUNC3(uprobe);

	return ret;
}