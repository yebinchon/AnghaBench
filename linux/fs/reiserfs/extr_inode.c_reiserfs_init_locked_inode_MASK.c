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
struct reiserfs_iget_args {int /*<<< orphan*/  dirid; int /*<<< orphan*/  objectid; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  k_dir_id; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct inode *inode, void *p)
{
	struct reiserfs_iget_args *args = (struct reiserfs_iget_args *)p;
	inode->i_ino = args->objectid;
	FUNC0(inode)->k_dir_id = FUNC1(args->dirid);
	return 0;
}