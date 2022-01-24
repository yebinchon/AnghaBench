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
struct nilfs_mdt_info {struct nilfs_mdt_info* mi_bgl; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nilfs_mdt_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_mdt_info*) ; 

void FUNC2(struct inode *inode)
{
	struct nilfs_mdt_info *mdi = FUNC0(inode);

	FUNC1(mdi->mi_bgl); /* kfree(NULL) is safe */
	FUNC1(mdi);
}