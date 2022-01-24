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
struct ocfs2_alloc_context {scalar_t__ ac_which; int /*<<< orphan*/ * ac_find_loc_priv; int /*<<< orphan*/ * ac_resv; int /*<<< orphan*/ * ac_bh; struct inode* ac_inode; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ OCFS2_AC_USE_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 

void FUNC5(struct ocfs2_alloc_context *ac)
{
	struct inode *inode = ac->ac_inode;

	if (inode) {
		if (ac->ac_which != OCFS2_AC_USE_LOCAL)
			FUNC4(inode, 1);

		FUNC1(inode);

		FUNC2(inode);
		ac->ac_inode = NULL;
	}
	FUNC0(ac->ac_bh);
	ac->ac_bh = NULL;
	ac->ac_resv = NULL;
	FUNC3(ac->ac_find_loc_priv);
	ac->ac_find_loc_priv = NULL;
}