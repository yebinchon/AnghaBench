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
struct inode_entry {int /*<<< orphan*/  list; struct inode* inode; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct gc_inode_list {int /*<<< orphan*/  ilist; int /*<<< orphan*/  iroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  f2fs_inode_entry_slab ; 
 struct inode_entry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct inode_entry*) ; 
 struct inode* FUNC2 (struct gc_inode_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gc_inode_list *gc_list, struct inode *inode)
{
	struct inode_entry *new_ie;

	if (inode == FUNC2(gc_list, inode->i_ino)) {
		FUNC3(inode);
		return;
	}
	new_ie = FUNC0(f2fs_inode_entry_slab, GFP_NOFS);
	new_ie->inode = inode;

	FUNC1(&gc_list->iroot, inode->i_ino, new_ie);
	FUNC4(&new_ie->list, &gc_list->ilist);
}