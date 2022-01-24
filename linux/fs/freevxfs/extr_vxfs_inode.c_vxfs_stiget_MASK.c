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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_2__ {int /*<<< orphan*/  vsi_stilist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct super_block*) ; 

struct inode *
FUNC6(struct super_block *sbp, ino_t ino)
{
	struct inode *inode;
	int error;

	inode = FUNC5(sbp);
	if (!inode)
		return NULL;
	inode->i_ino = FUNC3();

	error = FUNC2(FUNC1(sbp)->vsi_stilist, FUNC0(inode), ino);
	if (error) {
		FUNC4(inode);
		return NULL;
	}

	return inode;
}