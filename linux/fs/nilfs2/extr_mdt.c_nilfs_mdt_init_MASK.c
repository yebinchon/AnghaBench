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
struct nilfs_mdt_info {int /*<<< orphan*/  mi_sem; } ;
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; struct nilfs_mdt_info* i_private; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  def_mdt_aops ; 
 int /*<<< orphan*/  def_mdt_fops ; 
 int /*<<< orphan*/  def_mdt_iops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nilfs_mdt_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,size_t) ; 

int FUNC4(struct inode *inode, gfp_t gfp_mask, size_t objsz)
{
	struct nilfs_mdt_info *mi;

	mi = FUNC1(FUNC3(sizeof(*mi), objsz), GFP_NOFS);
	if (!mi)
		return -ENOMEM;

	FUNC0(&mi->mi_sem);
	inode->i_private = mi;

	inode->i_mode = S_IFREG;
	FUNC2(inode->i_mapping, gfp_mask);

	inode->i_op = &def_mdt_iops;
	inode->i_fop = &def_mdt_fops;
	inode->i_mapping->a_ops = &def_mdt_aops;

	return 0;
}