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
struct nilfs_shadow_map {int /*<<< orphan*/  bmap_store; int /*<<< orphan*/  frozen_btnodes; int /*<<< orphan*/  frozen_data; } ;
struct nilfs_mdt_info {struct nilfs_shadow_map* mi_shadow; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_bmap; int /*<<< orphan*/  i_btnode_cache; } ;
struct inode {int /*<<< orphan*/ * i_mapping; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 struct nilfs_mdt_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct inode *inode)
{
	struct nilfs_mdt_info *mi = FUNC1(inode);
	struct nilfs_inode_info *ii = FUNC0(inode);
	struct nilfs_shadow_map *shadow = mi->mi_shadow;
	int ret;

	ret = FUNC3(&shadow->frozen_data, inode->i_mapping);
	if (ret)
		goto out;

	ret = FUNC3(&shadow->frozen_btnodes,
				     &ii->i_btnode_cache);
	if (ret)
		goto out;

	FUNC2(ii->i_bmap, &shadow->bmap_store);
 out:
	return ret;
}