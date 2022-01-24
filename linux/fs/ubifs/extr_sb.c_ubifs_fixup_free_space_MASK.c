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
struct ubifs_sb_node {int /*<<< orphan*/  flags; } ;
struct ubifs_info {int space_fixup; int superblock_need_write; int /*<<< orphan*/  ro_mount; struct ubifs_sb_node* sup_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBIFS_FLG_SPACE_FIXUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,char*) ; 

int FUNC4(struct ubifs_info *c)
{
	int err;
	struct ubifs_sb_node *sup = c->sup_node;

	FUNC2(c, c->space_fixup);
	FUNC2(c, !c->ro_mount);

	FUNC3(c, "start fixing up free space");

	err = FUNC1(c);
	if (err)
		return err;

	/* Free-space fixup is no longer required */
	c->space_fixup = 0;
	sup->flags &= FUNC0(~UBIFS_FLG_SPACE_FIXUP);

	c->superblock_need_write = 1;

	FUNC3(c, "free space fixup complete");
	return err;
}