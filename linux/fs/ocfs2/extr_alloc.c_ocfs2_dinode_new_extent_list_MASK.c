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
struct TYPE_3__ {int /*<<< orphan*/  l_count; scalar_t__ l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct TYPE_4__ {TYPE_1__ i_list; } ;
struct ocfs2_dinode {TYPE_2__ id2; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ocfs2_dinode*) ; 

void FUNC3(struct inode *inode,
				  struct ocfs2_dinode *di)
{
	FUNC2(inode, di);
	di->id2.i_list.l_tree_depth = 0;
	di->id2.i_list.l_next_free_rec = 0;
	di->id2.i_list.l_count = FUNC0(
		FUNC1(inode->i_sb, di));
}