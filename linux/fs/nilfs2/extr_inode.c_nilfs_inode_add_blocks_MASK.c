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
struct nilfs_root {int /*<<< orphan*/  blocks_count; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct nilfs_root* i_root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 

void FUNC4(struct inode *inode, int n)
{
	struct nilfs_root *root = FUNC0(inode)->i_root;

	FUNC3(inode, FUNC2(inode) * n);
	if (root)
		FUNC1(n, &root->blocks_count);
}