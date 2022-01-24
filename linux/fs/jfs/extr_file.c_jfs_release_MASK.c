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
struct jfs_inode_info {int active_ag; int /*<<< orphan*/  ag_lock; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct bmap {int /*<<< orphan*/ * db_active; } ;
struct TYPE_2__ {struct bmap* bmap; } ;

/* Variables and functions */
 struct jfs_inode_info* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct jfs_inode_info *ji = FUNC0(inode);

	FUNC3(&ji->ag_lock);
	if (ji->active_ag != -1) {
		struct bmap *bmap = FUNC1(inode->i_sb)->bmap;
		FUNC2(&bmap->db_active[ji->active_ag]);
		ji->active_ag = -1;
	}
	FUNC4(&ji->ag_lock);

	return 0;
}