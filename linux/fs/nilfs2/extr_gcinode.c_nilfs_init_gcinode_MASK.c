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
struct nilfs_inode_info {int /*<<< orphan*/  i_bmap; scalar_t__ i_flags; } ;
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  empty_aops ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct inode *inode)
{
	struct nilfs_inode_info *ii = FUNC0(inode);

	inode->i_mode = S_IFREG;
	FUNC1(inode->i_mapping, GFP_NOFS);
	inode->i_mapping->a_ops = &empty_aops;

	ii->i_flags = 0;
	FUNC2(ii->i_bmap);

	return 0;
}