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
struct nilfs_shadow_map {int /*<<< orphan*/  frozen_btnodes; int /*<<< orphan*/  frozen_data; } ;
struct nilfs_mdt_info {int /*<<< orphan*/  mi_sem; struct nilfs_shadow_map* mi_shadow; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nilfs_mdt_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_shadow_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct inode *inode)
{
	struct nilfs_mdt_info *mi = FUNC0(inode);
	struct nilfs_shadow_map *shadow = mi->mi_shadow;

	FUNC1(&mi->mi_sem);
	FUNC2(shadow);
	FUNC3(&shadow->frozen_data, 0);
	FUNC3(&shadow->frozen_btnodes, 0);
	FUNC4(&mi->mi_sem);
}