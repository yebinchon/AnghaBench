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
struct ubifs_znode {int level; } ;
struct TYPE_3__ {int /*<<< orphan*/  znode; } ;
struct ubifs_info {TYPE_1__ zroot; } ;
struct TYPE_4__ {int pid; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ,struct ubifs_znode*) ; 

void FUNC3(struct ubifs_info *c)
{
	struct ubifs_znode *znode;
	int level;

	FUNC0("\n");
	FUNC0("(pid %d) start dumping TNC tree\n", current->pid);
	znode = FUNC2(c, c->zroot.znode, NULL);
	level = znode->level;
	FUNC0("== Level %d ==\n", level);
	while (znode) {
		if (level != znode->level) {
			level = znode->level;
			FUNC0("== Level %d ==\n", level);
		}
		FUNC1(c, znode);
		znode = FUNC2(c, c->zroot.znode, znode);
	}
	FUNC0("(pid %d) finish dumping TNC tree\n", current->pid);
}