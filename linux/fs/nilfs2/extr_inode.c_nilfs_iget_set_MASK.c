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
struct nilfs_iget_args {scalar_t__ ino; int /*<<< orphan*/ * root; int /*<<< orphan*/  cno; scalar_t__ for_gc; } ;
struct inode {scalar_t__ i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/ * i_root; int /*<<< orphan*/  i_cno; int /*<<< orphan*/  i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_GCINODE ; 
 scalar_t__ NILFS_ROOT_INO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, void *opaque)
{
	struct nilfs_iget_args *args = opaque;

	inode->i_ino = args->ino;
	if (args->for_gc) {
		FUNC1(inode)->i_state = FUNC0(NILFS_I_GCINODE);
		FUNC1(inode)->i_cno = args->cno;
		FUNC1(inode)->i_root = NULL;
	} else {
		if (args->root && args->ino == NILFS_ROOT_INO)
			FUNC2(args->root);
		FUNC1(inode)->i_root = args->root;
	}
	return 0;
}