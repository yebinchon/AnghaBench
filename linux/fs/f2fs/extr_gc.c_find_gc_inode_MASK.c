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
struct inode_entry {struct inode* inode; } ;
struct inode {int dummy; } ;
struct gc_inode_list {int /*<<< orphan*/  iroot; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct inode_entry* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC1(struct gc_inode_list *gc_list, nid_t ino)
{
	struct inode_entry *ie;

	ie = FUNC0(&gc_list->iroot, ino);
	if (ie)
		return ie->inode;
	return NULL;
}