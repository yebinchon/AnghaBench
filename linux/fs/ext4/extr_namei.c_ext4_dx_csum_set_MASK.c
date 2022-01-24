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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_dir_entry {int dummy; } ;
struct dx_tail {int /*<<< orphan*/  dt_checksum; } ;
struct dx_entry {int dummy; } ;
struct dx_countlimit {int /*<<< orphan*/  count; int /*<<< orphan*/  limit; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_dir_entry*,int,int,struct dx_tail*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dx_countlimit* FUNC4 (struct inode*,struct ext4_dir_entry*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, struct ext4_dir_entry *dirent)
{
	struct dx_countlimit *c;
	struct dx_tail *t;
	int count_offset, limit, count;

	if (!FUNC3(inode->i_sb))
		return;

	c = FUNC4(inode, dirent, &count_offset);
	if (!c) {
		FUNC1(inode, "dir seems corrupt?  Run e2fsck -D.");
		return;
	}
	limit = FUNC5(c->limit);
	count = FUNC5(c->count);
	if (count_offset + (limit * sizeof(struct dx_entry)) >
	    FUNC0(inode->i_sb) - sizeof(struct dx_tail)) {
		FUNC6(inode);
		return;
	}
	t = (struct dx_tail *)(((struct dx_entry *)c) + limit);

	t->dt_checksum = FUNC2(inode, dirent, count_offset, count, t);
}